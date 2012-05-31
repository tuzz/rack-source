require 'rack'
require 'pygments'

module Rack
  class Source

    attr_reader :path, :params

    def initialize(path, params = {})
      @path = path
      @params = params
    end

    def call(env)
      [200, { 'Content-Type' => 'text/html' }, [html]]
    end

    private
    def html
      "<html><head><style>#{style}</style></head><body>#{body}</body></html>"
    end

    def style
      Pygments.css
    end

    def body
      Pygments.highlight(file_content, params)
    end

    def file_content
      ::File.read(path)
    end

  end
end
