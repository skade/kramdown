require 'rake/file_list'

Gem::Specification.new do |s|

  #### Basic information
  s.name = 'kramdown'
  s.version = "1.1.19"
  s.summary = "My special version of kramdown"
  s.description = "Mine, all mine"
  s.license = 'MIT'

  #### Dependencies, requirements and files
  s.files = Rake::FileList.new([
                            'Rakefile',
                            'setup.rb',
                            'COPYING', 'README.md', 'AUTHORS',
                            'VERSION', 'CONTRIBUTERS',
                            'bin/*',
                            'benchmark/*',
                            'lib/**/*.rb',
                            'man/man1/kramdown.1',
                            'data/**/*',
                            'doc/**',
                            'test/**/*'
                           ])

  s.require_path = 'lib'
  s.executables = ['kramdown']
  s.default_executable = 'kramdown'
  s.add_development_dependency 'coderay', '~> 1.0.0'
  s.add_development_dependency 'stringex', '~> 1.5.1'

  #### Documentation

  s.has_rdoc = true
  s.rdoc_options = ['--main', 'lib/kramdown/document.rb']

  #### Author and project details

  s.author = 'Thomas Leitner'
  s.email = 't_leitner@gmx.at'
  s.homepage = "http://kramdown.rubyforge.org"
  s.rubyforge_project = 'kramdown'
end
