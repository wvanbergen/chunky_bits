require 'rubygems'
require 'bundler/setup'

require 'chunky_bits'

module ResourceFileHelper
  
  def resource_file(name)
    File.expand_path("./resources/#{name}", File.dirname(__FILE__))
  end
  
  def resource_data(name)
    data = nil
    File.open(resource_file(name), 'rb') { |f| data = f.read } 
    data
  end
  
  def reference_canvas(name)
    ChunkyPNG::Canvas.from_file(resource_file("#{name}.png"))
  end
  
  def reference_image(name)
    ChunkyPNG::Image.from_file(resource_file("#{name}.png"))
  end
  
  def display(png)
    filename = resource_file('_tmp.png')
    png.save(filename)
    `open #{filename}`
  end
end

RSpec.configure do |config|
  config.include ResourceFileHelper
end
