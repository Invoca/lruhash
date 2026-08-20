# LRUHash

This is a hash class that holds a maximum number of elements.  If adding an element causes the hash to grow over this size, the least recently used element is removed. Elements in the hash are maintained in LRU order.

Useful for implementing in-process caches where memory growth control is desired.


Example:
```ruby
myhash = LRUHash.new(max: 2)

myhash['a'] = 'apples'
myhash['b'] = 'banana'

myhash.length # => 2

myhash['c'] = 'cookie' # displaces 'a'

myhash.length # => 2

myhash['a'] # => nil

myhash
=> {"b"=>"banana", "c"=>"cookie"}
````

## Installation

This gem is published to Invoca's private Gemfury server, not to RubyGems.org. Add it inside a `PRIVATE_GEM_SERVER` source block in your application's Gemfile:

```ruby
PRIVATE_GEM_SERVER = 'https://gem.fury.io/invoca'

source PRIVATE_GEM_SERVER do
  gem 'lruhash'
end
```
And then execute:
```ruby
$ bundle
```
## Usage
```ruby
require 'lruhash'

myhash = LRUHash.new(max: 100)

# Works like a regular Hash, except limited to 100 elements.
# When that size is exceeded, the Least Recently Used element will be ejected.
# Simply reading an element will move it to the front of the Most Recently Used list (back of LRU list).
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Credit
This was forked from http://github.com/oldmoe/lruhash and modernized.  Thanks to oldmoe for the first version.
