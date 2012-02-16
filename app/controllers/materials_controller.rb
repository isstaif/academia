class MaterialsController < ApplicationController
  def index
    @materials = Material.all
  end
  
  def show    
    @material = Material.find_by_id(params[:id])
    if @material.nil?
      flash[:error] = "The material you ordered was not found!"
      redirect_to :action => :index
    else    
      @title = @material.title
    end
  end
  
  def new
    @material = Material.new
    @title = "New Material"
  end
  
  def create
    @material = Material.create(params[:material])
    if @material.valid?
      flash[:success] =  "Material created successfully!"
      redirect_to @material
    else
      @title = "New Material"
      render "new" 
    end
  end
  
end
