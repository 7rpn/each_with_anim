# EachWithAnim

プログレスバーを簡単に。<br>
RubyのCUI上で，クールなアニメーションを表示できます。<br>
ループが終了する予測時間も測定してくれます。

Each_with_anim is **easiest to make** progress bar and other **cool animations** in CUI.

![anim](https://github.com/7rpn/each_with_anim/blob/master/change_anim.gif)

## Installation

    $ gem install each_with_anim

## Usage

each_with_animはeachと同じ振る舞いをします。そこにアニメーションが追加されます。<br>
Use "each_with_anim" like "each" method.

```ruby
require "each_with_anim"

list = %w(hage hoge foo)
list.each_with_anim do |elem|
  #something
end
```

同時にwith_indexを使いたい時は以下の通り。<br>
also, if you watn to use "with_index"

```ruby
list = %w(hage hoge foo)
list.each_with_anim.with_index do |elem,i|
  #something
end
```

同様に，引数を取ってアニメーションを変えることができます。今後増やして行く予定。<br>
when you want to change animation,

```ruby
list = %w(hage hoge foo)
list.each_with_anim(1) do |elem|
  #something
end
```
![change_anim](https://github.com/7rpn/each_with_anim/blob/master/anim.gif)


## Problem

each_with_anim内でprintすると表示がバグります。<br>
解決策を絶賛探し中。

```ruby
list = %w(hage hoge foo)
list.each_with_anim do |elem|
    puts "piyoo"
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/7rpn/each_with_anim. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

なんでもok

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

自由に使ってください。
