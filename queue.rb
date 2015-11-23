require 'thread'

LIMIT = 5_000

list = (1..LIMIT)

def do_something(method, item)
  # log 1 out of 1000
  log = item % 1000 == 0
  puts "[#{method}] Processing item #{item}" if log
  sleep 1.0 / LIMIT
  puts "[#{method}] Done with item #{item}" if log
end

# paralel map
list.map do |item|
  Thread.new do
    do_something(:PMAP, item)
  end
end.each(&:join)

# queue
num_workers = 20
queue = Queue.new
threads = num_workers.times.map do
  Thread.new do
    while item = queue.pop
      do_something(:QUEUE, item)
    end
  end
end
list.each { |item| queue << item }
queue.close
threads.each(&:join)

# sized queue
num_workers = 20
queue = SizedQueue.new(num_workers * 2)
threads = num_workers.times.map do
  Thread.new do
    while item = queue.pop
      do_something(:SIZEDQUEUE, item)
    end
  end
end
list.each { |item| queue << item }
queue.close
threads.each(&:join)
