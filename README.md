# Rack Source

Serves a file with syntax highlighting.

# Usage

```ruby
# config.ru
require 'rack/source'

run Rack::Source.new('path/to/file')
```

You can force the language if it isn't automatically detected:

```ruby
run Rack::Source.new(__FILE__, :lexer => :ruby)
```

All parameters are passed through to [Pygments](https://github.com/tmm1/pygments.rb), so look there for additional options and supported lexers.

## Ruby 1.9+

If you're using a newer version of Ruby, you'll need to run a [thin](http://code.macournoyer.com/thin/) server instead. There is an [issue](https://github.com/tmm1/pygments.rb/issues/25) with [Pygments](https://github.com/tmm1/pygments.rb).

# Contribution

Feel free. No pull request is too small.

Twitter: [@cpatuzzo](https://twitter.com/#!/cpatuzzo)
