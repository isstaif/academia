require 'spec_helper'

describe Material do
  before(:each) do
    @attr = { :title => "A sample material",
              :description => "This is a sample material with some description",
              :publication_date => Date.current,
              :issue => 12,
              :year => 200,
              :pages => "12-5"                            
      }
  end
  
  it "should have title" do    
    no_title_material = Material.new(@attr.merge(:title => nil))
    no_title_material.should_not be_valid    
  end
  
  it "should have description" do
    no_description_material = Material.new(@attr.merge(:description => nil))
    no_description_material.should_not be_valid 
  end
end
