require 'rubygems'
require 'rake'
require 'echoe'

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
Echoe.new('ruby-wsd') do |p|
  p.description = 'Ruby bindings for http://www.websequencediagrams.com'
  p.url = 'http://github.com/calas/ruby-wsd/tree/master'
  p.author = 'Jorge Calás Lozano'
  p.email = 'calas@qvitta.net'
  p.ignore_pattern = ['tmp/*']
  p.development_dependencies = []
end

Dir['tasks/**/*.rake'].each { |t| load t }
