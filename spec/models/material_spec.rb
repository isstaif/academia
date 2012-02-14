require 'spec_helper'

describe Material do
  before(:each) do
    @attr = { :title => "A sample material",
              :description => "This is a sample material with some description",
              :publication_date => Date.current,
              :issue => 12,
              :year => 200,
              :pages => "12-5",        
              :url => "http://example.com/page/23",
              :pdf => "http://example.com/page/243"
                                  
      }
  end
  
  it "should have title" do    
    no_title_material = Material.new(@attr.merge(:title => ""))
    no_title_material.should_not be_valid    
  end
  
  it "should have description" do
    no_description_material = Material.new(@attr.merge(:description => ""))
    no_description_material.should_not be_valid 
  end
  
  it "should have a valid url if exists" do
    invalid_url_material = Material.new(@attr.merge(:url => "foo"))
    invalid_url_material.should_not be_valid
  end
  
  it "should have a valid pdf_url if exists" do
    invalid_pdf_url_material = Material.new(@attr.merge(:pdf_url => "foo"))
    invalid_pdf_url_material.should_not be_valid
  end
  
end
