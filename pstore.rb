def example_with_all_datatypes(store)
  # store a string
  store.transaction do
    store['hello'] = 'world'
  end

  # read string
  store.transaction do
    p store['hello']
  end

  # transactions with integers
  3.times do
    store.transaction do
      store['account1'] ||= 0
      store['account2'] ||= 0

      store['account1'] += 1
      store['account2'] -= 1
    end

    store.transaction do
      p store['account1'], store['account2']
    end
  end

  # store nested data
  store.transaction do
    store[:data] = { a: 1, b: 2}
  end

  store.transaction do
    store[:data][:a] += 10
  end

  store.transaction do
    p store[:data]
  end

  # store custom object
  store.transaction do
    store[:object] = MyObject.new('hello')
  end

  store.transaction do
    p store[:object]
  end
end

def example_with_json_data(store)
  # store nested data
  store.transaction do
    store['data'] = { 'a' => 1, 'b' => 2 }
  end

  # atomic nested increment
  store.transaction do
    store['data']['a'] += 10
  end

  store.transaction do
    p store['data']
  end
end

class MyObject
  def initialize(value)
    @value = value
  end
end

# marshall store
require 'pstore'
example_with_all_datatypes PStore.new('mydata.data')

# yaml store
require 'yaml/store'
example_with_all_datatypes YAML::Store.new('mydata.yml')

# json store
require 'json'

class JSONStore < PStore
  def dump(table)
    JSON.dump(table)
  end

  def load(content)
    JSON.load(content)
  end
end

example_with_json_data JSONStore.new('mydata.json')
