class PagesController < ApplicationController
  def home
    @title = "Home"
    @materials = Material.all
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

end
