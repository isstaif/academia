class Publisher < ActiveRecord::Base
  attr_accessible :name, :city  
  
  validates :name, :presence => true
  validates :city, :presence => true
  
  
end
