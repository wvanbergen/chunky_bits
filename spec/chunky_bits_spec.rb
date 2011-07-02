require 'spec_helper'

describe ChunkyBits do
  it "should have a VERSION constant" do
    ChunkyBits.const_defined?('VERSION').should be_true
  end
  
  it "should load ChunkyPNG" do
    Object.const_defined?('ChunkyPNG').should be_true
  end
end
