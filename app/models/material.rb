class Material < ActiveRecord::Base
  attr_accessible :title, :description, :publication_date, :issue, :year, :pages 
  
  
  
end
