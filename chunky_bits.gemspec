Gem::Specification.new do |s|
  s.name = 'chunky_bits'
  s.rubyforge_project = 'chunky_png'
  
  # Do not change the version and date fields by hand. This will be done
  # automatically by the gem release script.
  s.version = "0.0.1"
  s.date    = "2011-07-02"

  s.summary     = "Collection of image processing algorithms built on top of ChunkyPNG"
  s.description = <<-EOT
    This library is an add-on for ChunkyPNG. It contains pure Ruby implementations of 
    image processing algorithms that are out of scope for ChunkyPNG itself. 
    
    This gem is mostly meant as a learning tool. Feel free to fork this project to add
    new algorithms, even if you do not consider yourself an expert on the topic.
  EOT

  s.authors  = ['Willem van Bergen']
  s.email    = ['willem@railsdoctors.com']
  s.homepage = 'https://github.com/wvanbergen/chunky_bits/wiki'

  s.add_runtime_dependency('chunky_png', '~> 1')
  
  s.add_development_dependency('rake')
  s.add_development_dependency('rspec', '~> 2')

  s.rdoc_options << '--title' << s.name << '--main' << 'README.rdoc' << '--line-numbers' << '--inline-source'
  s.extra_rdoc_files = ['README.rdoc']

  # Do not change the files and test_files fields by hand. This will be done
  # automatically by the gem release script.
  s.files      = %w(.gitignore .infinity_test .travis.yml Gemfile LICENSE README.rdoc Rakefile chunky_bits.gemspec lib/chunky_bits.rb lib/chunky_bits/all.rb spec/chunky_bits_spec.rb spec/spec_helper.rb tasks/github-gem.rake)
  s.test_files = %w(spec/chunky_bits_spec.rb)
end
