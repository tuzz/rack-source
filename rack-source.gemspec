Gem::Specification.new do |s|
  s.name        = 'rack-source'
  s.version     = '0.0.2'
  s.date        = '2012-06-01'
  s.summary     = 'Rack Source'
  s.description = 'Serves a file with syntax highlighting'
  s.author      = 'Chris Patuzzo'
  s.email       = 'chris@patuzzo.co.uk'
  s.files       =  ['README.md'] + Dir['lib/**/*.*']
  s.homepage    = 'https://github.com/tuzz/rack-source'

  s.add_dependency 'rack'
  s.add_dependency 'pygments.rb'
end
