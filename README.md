# Fontdock - Fonts Toolbox [![Build Status](https://secure.travis-ci.org/myokoym/fontdock.png?branch=master)](http://travis-ci.org/myokoym/fontdock)

A toolbox for managing font families.

## Requirements

* Ruby/Pango in [Ruby-GNOME2](http://ruby-gnome2.sourceforge.jp/)
* [Thor](http://whatisthor.com/)

## Installation

Add this line to your application's Gemfile:

    gem 'fontdock'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fontdock

## Usage

### Command Line

#### List available fonts

    $ fontdock ls

### Library

#### Get available font names

```ruby
require "fontdock"

names = Fontdock::Local.names
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
