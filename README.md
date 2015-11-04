# each_with_anim

RubyのCUI上でループ時のアニメーションが簡単に作れるメソッドです。<br>
ループが終了する予測時間も測定してくれます。

Each_with_anim is **easiest to make** progress bar and other **cool animations** in CUI.

![anim](https://github.com/7rpn/each_with_anim/raw/master/anim_change.gif)

## Installation

    $ gem install each_with_anim

## Usage

each_with_animは，アニメーションを表示する以外は基本的にeachと同じ振る舞いをします。<br>
Use "each_with_anim" like "each" method.

```ruby
require "each_with_anim"

list = %w(hage hoge foo) * 1000
list.each_with_anim do |elem|
  #something
end
```

もちろんwith_indexとかも使えます。<br>
あとeach_with_animationはeach_with_animのエイリアスになってます。長いので非推奨。<br>
also, if you want to use "with_index"

```ruby
list = %w(hage hoge foo) * 1000
list.each_with_animation.with_index do |elem,i|
  #something
end
```

同様に，引数を取ってアニメーションを変えることができます。今はまだ2つだけ。<br>
if you want to change animation,

```ruby
list = %w(hage hoge foo) * 1000
list.each_with_anim(1) do |elem|
  #something
end
```
![change_anim](https://github.com/7rpn/each_with_anim/raw/master/anim.gif)


## Problem

each_with_anim内でprintすると表示がバグります。<br>
解決策を絶賛探し中。

```ruby
list = %w(hage hoge foo) * 10
list.each_with_anim do |elem|
    puts "piyoo"
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/7rpn/each_with_anim. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

なんでもok<br>
すごい顔文字師がいたら助けてください笑

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

自由に使ってください。
