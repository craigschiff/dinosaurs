class DinosaurTypesController < ApplicationController

  def index
    @types = DinosaurType.all
  end

  def show
    @type = DinosaurType.find(params[:id])
  end

  def new
    @type = DinosaurType.new
  end

  def create
    type = Dinosaur.create(type_params)
    byebug
    # if params[:]
    #   type
    #   redirect_to dinosaur_type_path(type)
    # else
    #   render :new
    #   flash[:alert] = "Try again"
    # end
  end

  # def edit
  #   @type = DinosaurType.find(params(:id))
  # end

  # def update
  #   @type = DinosaurType.find(params(:id))
  #   @type.update(type_params)
  #   redirect_to dinosaur_type_path(@type)
  # end

  def type_params
    params.require(:dinosaur_type).permit(:name)
  end
end
