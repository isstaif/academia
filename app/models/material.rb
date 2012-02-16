class Material < ActiveRecord::Base
  attr_accessible :title, :description, :publication_date, :issue, :year, :pages, :pdf
  
  url_regex =  /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
     
  validates :title, :presence => true
  validates :description, :presence => true
  
  has_attached_file :pdf
  
  validates_attachment_presence :pdf
  
end
