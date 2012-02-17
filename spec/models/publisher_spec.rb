require 'spec_helper'

describe Publisher do
  before (:each) do
    @attr = {
      :name => "Test Publisher",
      :city => "TestCity"
    }
  end
  it "should have a name" do
    no_publisher = Publisher.new(@attr.merge(:name => ""))
    no_publisher.should_not be_valid
  end
  it "should have a city" do
    no_publisher = Publisher.new(@attr.merge(:city => ""))
    no_publisher.should_not be_valid
  end
end
