class Material < ActiveRecord::Base
  attr_accessible :title, :description, :publication_date, :issue, :year, :pages, :url, :pdf_url
  
  url_regex =  /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
     
  validates :title, :presence => true
  validates :description, :presence => true
  validates :url, :format => { :with =>   url_regex }
  validates :pdf_url, :format => { :with =>   url_regex }
  
end
