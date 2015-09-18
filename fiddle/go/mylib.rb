require 'fiddle'
require 'fiddle/import'

module MyLib
  extend Fiddle::Importer
  dlload 'libmylib.so'
  extern 'int add(int, int)'
end

puts MyLib.add(11, 31)
