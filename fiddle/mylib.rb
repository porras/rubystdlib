require 'fiddle'
require 'fiddle/import'

module MyLib
  extend Fiddle::Importer
  dlload 'libmylib.so'
  extern 'int add(int, int)'
end

puts MyLib.add(11, 31)

class MyNum
  module MyLib
    extend Fiddle::Importer
    dlload 'libmylib.so'
    extern 'int add(int, int)'
  end

  attr_reader :value

  def initialize(value)
    @value = value
  end

  def +(other)
    self.class.new(MyLib.add(value, other.value))
  end

  protected :value
end

p MyNum.new(5) + MyNum.new(7) #=> #<MyNum:0x007fe489042cc8 @value=12>

class Whatever
  module MyLib
    extend Fiddle::Importer
    dlload 'libmylib.so'
    extern 'int *returns_a_pointer(int)'
    extern 'int uses_a_pointer(*int)'
  end

  def initialize(value)
    @pointer = MyLib.returns_a_pointer(value)
  end

  def do_something
    MyLib.uses_a_pointer(@pointer)
  end
end

w = Whatever.new(13)
p w.do_something
