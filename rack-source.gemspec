Gem::Specification.new do |s|
  s.name        = 'rack-source'
  s.version     = '0.0.1'
  s.date        = '2012-06-01'
  s.summary     = 'Rack Source'
  s.description = 'Serves a file with syntax highlighting'
  s.author      = 'Christopher Patuzzo'
  s.email       = 'chris.patuzzo@gmail.com'
  s.files       =  ['README.md'] + Dir['lib/**/*.*']
  s.homepage    = 'https://github.com/cpatuzzo/rack-source'

  s.add_dependency 'rack'
  s.add_dependency 'pygments.rb'
end
