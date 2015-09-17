require 'shellwords'

p Shellwords.split('um dois três "trinta e um"')

filename = "Sergio's notes.txt"
p "cat #{Shellwords.escape(filename)}"

words = Shellwords.shelljoin(['uno', 'ciento uno', filename])
system "for word in #{words}; do echo $word; done"
