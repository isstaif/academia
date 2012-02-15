class MaterialsController < ApplicationController
  def show
    @material = Material.find(params[:id])
  end
  
  def new
    @material = Material.new
  end
  
end
