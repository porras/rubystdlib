require 'rake'
require 'shellwords'

files = Rake::FileList.new do |files|
  files.add('**/*.rb')
  files.add('**/*.c')
  files.exclude(/mylib\.rb$/)
end

p files

Rake::FileTask.define_task('checksum.md5' => files) do |t|
  puts "Calculating checksum"
  system "cat #{Shellwords.shelljoin(files)} | md5 > checksum.md5"
end.invoke
