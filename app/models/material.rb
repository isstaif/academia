class Material < ActiveRecord::Base
  attr_accessible :title, :description, :publication_date, :issue, :year, :pages 
  
  validates :title, :presence => true
  validates :description, :presence => true
  
end
