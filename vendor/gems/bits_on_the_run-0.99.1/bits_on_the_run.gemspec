spec = Gem::Specification.new do |s|

  s.name              = 'bits_on_the_run'
  s.version           = '0.99.1'
  s.date              = '2010-08-13'
  s.authors           = ['Graeme Mathieson', 'Mark Connell', 'Rubaidh Ltd', 'Joshua Sierles']
  s.email             = 'support@rubaidh.com'
  s.homepage          = 'http://github.com/rubaidh/bits_on_the_run'
  s.summary           = 'Ruby implementation of the Bits on the run API'
  s.rubyforge_project = 'rubaidh'
  
  s.description = "This is a Ruby implementation of the API for Bits on " + 
    "the run, a video hosting service. See <http://www.bitsontherun.com/> " + 
    "for more details."

  s.files = %w(
    CHANGELOG
    MIT-LICENSE
    README.rdoc
    Rakefile
    bits_on_the_run.gemspec
    lib/bits_on_the_run/client.rb
    lib/bits_on_the_run/configuration.rb
    lib/bits_on_the_run/initializer.rb
    lib/bits_on_the_run/video.rb
    lib/bits_on_the_run/video_conversion.rb
    lib/bits_on_the_run/video_create_response.rb
    lib/bits_on_the_run/video_template.rb
    lib/bits_on_the_run.rb
    spec/bits_on_the_run/client_spec.rb
    spec/bits_on_the_run/configuration_spec.rb
    spec/bits_on_the_run/initializer_spec.rb
    spec/bits_on_the_run/video_create_response_spec.rb
    spec/bits_on_the_run/video_spec.rb
    spec/spec_helper.rb
  )

  s.has_rdoc          = true
  s.extra_rdoc_files += ['README.rdoc', 'CHANGELOG', 'MIT-LICENSE']
  s.rdoc_options     += [
    '--title', 'Bits on the run', '--main', 'README.rdoc', '--line-numbers'
  ]

  s.add_dependency('activesupport')
  s.add_dependency('curb')
end
