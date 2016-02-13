[![Gem Version](https://badge.fury.io/rb/jive-add_on.svg)](http://badge.fury.io/rb/jive-add_on)
[![Build Status](https://travis-ci.org/butchmarshall/ruby-jive-add_on.svg?branch=master)](https://travis-ci.org/butchmarshall/ruby-jive-add_on)

# Jive::AddOn

An implemention of Jives AddOns using ActiveRecord.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jive-add_on'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jive-add_on

then run

```ruby
rails generate jive:add_on:active_record
```

## Usage

To the ActiveRecord model:

```ruby
Jive::AddOn.new(...)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/butchmarshall/ruby-jive-add_on.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

