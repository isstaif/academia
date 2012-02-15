class MaterialsController < ApplicationController
  def show
    @material = Material.find(params[:id])
  end
  
end
