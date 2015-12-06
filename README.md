[![5 hidden gems of the Ruby Standard Library](https://speakerd.s3.amazonaws.com/presentations/1648cae6655042b09737acd0dfd3ca6f/slide_0.jpg?1442427628)](https://speakerdeck.com/porras/5-hidden-gems-of-the-ruby-standard-library)

These are the slides, code examples and reference links for my talk *“5 hidden gems of the Ruby Standard Library“*, as presented in:

* [Rubyconf Portugal 2015](http://rubyconf.pt/), in Braga (Portugal), 14-15 September 2015.
* [Rails Israel 2015](https://railsisrael2015.events.co.il/home), in Tel Aviv (Israel), 24 November 2015.
* [Ruby OnlineConf](http://ruby.conf.online/), 2-4 December 2015

## Code examples

If you listened to the talk and were paying attention, you might have noticed that I talked about 6 libraries, not 5. That's because the parts about `rake` and `shellwords` were a bit intertwined. There is an example file for each of them though, so that's why there are six (this is the order in which I presented them, but other than the mentioned `rake`-`shellwords` there is not any dependency):

* `set`
* `queue`
* `rake`
* `shellwords`
* `fiddle`
* `pstore`

### Running the examples

All the examples work and are tested with MRI Ruby 2.2.2<sup>1</sup>. Some of them probably work with every version of every Ruby, some other definitely not. If you find one that doesn't work in some Ruby implementation and the fix is easy, pull requests are welcome :)

> <sup>1</sup> the `queue` example can be simplified thanks to an addition in Ruby 2.3. See [this branch](https://github.com/porras/rubystdlib/blob/ruby-2.3/queue.rb).

There is one file per library, except for `fiddle`, for which there is a directory.

To run the single file examples, you just need the usual:

    $ ruby <file.rb>

They will print some results which will make sense if you read the code. You're of course encouraged to play with them, make small changes, etc. The `pstore` example will print something different each time, because each run will take the database where the previous run left it. That's the point of databases ;)

To run the `fiddle` example, change into its directory, and run `make run`:

    $ cd fiddle
    $ make run

This will compile the C code (you will need `make` and `gcc` installed, these instructions for [Mac](http://stackoverflow.com/questions/9353444/how-to-use-install-gcc-on-mac-os-x-10-8-xcode-4-4/9353468#9353468), [Ubuntu](https://help.ubuntu.com/community/InstallingCompilers#Installing_the_GNU_C_compiler_and_GNU_C.2B-.2B-_compiler) and [Windows](http://preshing.com/20141108/how-to-install-the-latest-gcc-on-windows/) can probably help), and run the example.

The `fiddle/go` and `fiddle/crystal` directories contain the example redone (partially, only the most basic part, for demonstration purposes) in Go and Crystal. They work the same (`make run`), but they require Go 1.5 or Crystal (not sure which versions work, definitely with 0.9.0).

## Reference links

* [http://www.mikeperham.com/2010/11/22/the-ruby-stdlib-is-a-ghetto/](http://www.mikeperham.com/2010/11/22/the-ruby-stdlib-is-a-ghetto/)
* [http://architecturalatrocities.com/post/23659800703/the-ruby-standard-library-is-a-disgrace](http://architecturalatrocities.com/post/23659800703/the-ruby-standard-library-is-a-disgrace)
* [http://apocryph.org/archives/579](http://apocryph.org/archives/579)
* [http://devblog.avdi.org/2015/09/04/poll-whats-your-favorite-ruby-http-client-library/](http://devblog.avdi.org/2015/09/04/poll-whats-your-favorite-ruby-http-client-library/)
* [http://www.jstorimer.com/pages/ruby-core-classes-arent-thread-safe](http://www.jstorimer.com/pages/ruby-core-classes-arent-thread-safe)
* [http://iamserg.io/writings/2014/queue-and-sized-queue/](http://iamserg.io/writings/2014/queue-and-sized-queue/)
* [http://blog.skylight.io/bending-the-curve-writing-safe-fast-native-gems-with-rust/](http://blog.skylight.io/bending-the-curve-writing-safe-fast-native-gems-with-rust/)
* [http://blog.paracode.com/2015/08/28/ruby-and-go-sitting-in-a-tree](http://blog.paracode.com/2015/08/28/ruby-and-go-sitting-in-a-tree)
* [https://robm.me.uk/ruby/2014/01/25/pstore.html](https://robm.me.uk/ruby/2014/01/25/pstore.html)
* [http://www.rubydoc.info/stdlib/set](http://www.rubydoc.info/stdlib/set)
* [http://www.rubydoc.info/stdlib/thread/Queue](http://www.rubydoc.info/stdlib/thread/Queue)
* [http://www.rubydoc.info/stdlib/thread/SizedQueue](http://www.rubydoc.info/stdlib/thread/SizedQueue)
* [http://www.rubydoc.info/gems/rake/Rake/FileList](http://www.rubydoc.info/gems/rake/Rake/FileList)
* [http://www.rubydoc.info/gems/rake/Rake/FileTask](http://www.rubydoc.info/gems/rake/Rake/FileTask)
* [http://www.rubydoc.info/stdlib/shellwords](http://www.rubydoc.info/stdlib/shellwords)
* [http://www.rubydoc.info/stdlib/fiddle/Fiddle](http://www.rubydoc.info/stdlib/fiddle/Fiddle)
* [http://www.rubydoc.info/stdlib/pstore/PStore](http://www.rubydoc.info/stdlib/pstore/PStore)
