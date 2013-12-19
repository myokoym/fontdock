# Fontdock - Fonts Toolbox

A toolbox for managing font families.

## Installation

Add this line to your application's Gemfile:

    gem 'fontdock'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fontdock

## Usage

### Command Line

#### List abailable fonts

    $ fontdock ls

### Library

#### Get abailable font names

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
