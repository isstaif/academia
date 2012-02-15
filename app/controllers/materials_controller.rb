class MaterialsController < ApplicationController
  def show    
    @material = Material.find(params[:id])
    @title = @material.title
  end
  
  def new
    @material = Material.new
    @title = "New Material"
  end
  
  def create
    @material = Material.new(params[:material])
    if @material.save
      flash[:success] =  "Material created successfully!"
      redirect_to @material
    else
      @title = "New Material"
      render "new" 
    end
  end
  
end
