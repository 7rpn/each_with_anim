require "each_with_anim/version"

module Enumerable
	def each_with_anim(kind=0)
		return enum_for(__method__) unless block_given?
		array_size = self.length
		@start_time, @before_size  = Time.now, 0 
		self.each_with_index do |elem,i|
			make_animation(i,array_size,kind)
			yield elem
		end
	end
	alias_method :each_with_animation, :each_with_anim
	protected
	def make_animation(i,array_size,kind)
		left = "---" 
		now_time = Time.now
		left = ((now_time- @start_time)*(array_size-i)*10.0/i).to_i/10.0 unless i == 0
		bar_len = 200
		now_len = (bar_len*(i+1))/array_size
		char =
		case kind
			when 0 then (0x2588..0x258F).to_a.reverse.pack("U*")
			when 1 then " " + (0x2581..0x2588).to_a.pack("U*")
			when 2 then rand = Random.rand(8000);" " + (rand..(rand+8)).to_a.pack("U*");
		end
		bar = ("\u2588" * now_len.to_s(8)[0..-2].to_i(8)) + char[now_len.to_s(8)[-1].to_i] 
		bar = (bar+(" "*(bar_len/8-bar.size+1)))[0..-2]
		parc = (1000*(i+1)/size)/10.0
		str = "#{(" "*(6 - parc.to_s.size))+parc.to_s}%% |#{bar}| #{i+1}/#{size}  left: #{left}sec."
		printf (" "*@before_size)+"\e[#{@before_size}D"+str+"\e[#{str.size}D"
		@before_size = str.size
		puts if i+1 == size
	end
end