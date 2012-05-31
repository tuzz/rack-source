# Rack Source

Serves a file with syntax highlighting. Rack::Source has the simplicity of Rack::File, combined with the usefulness of Rack::CodeHighlighter, except using GitHub's Pygments gem under the hood.

# Setup

```
gem install rack-source
```

```ruby
# config.ru
require 'rack/source'

run Rack::Source.new('path/to/file')
```

```
rackup
```

It usually does a good job of detecting the source language, but you can force it, i.e.

```ruby
run Rack::Source.new(__FILE__, :lexer => :ruby)
```

All parameters are passed through to [Pygments](https://github.com/tmm1/pygments.rb), so look there for additional options and supported lexers.

# Contribution

Feel free. No pull request is too small.

[@cpatuzzo](https://twitter.com/#!/cpatuzzo)
