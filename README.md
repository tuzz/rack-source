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

# Ruby 1.9+

At the time of writing, there is a problem with Pygments causing a segfault. Running a [thin server](http://code.macournoyer.com/thin/) resolves this issue.

# Contribution

Feel free. No pull request is too small.

Twitter: [@cpatuzzo](https://twitter.com/#!/cpatuzzo)
