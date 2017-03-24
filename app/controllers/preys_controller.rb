class PreysController < ApplicationController

  def index
    @preys = Prey.all
  end

  def show
    @prey = Prey.find(params[:id])
  end

  def new
    @prey = Prey.new
  end

  def create
    prey = Prey.create(prey_params)
    if prey
      redirect_to prey_path(prey)
    else
      render :new
      flash[:alert] = "Try again"
    end
  end

  def edit
    @prey = Prey.find(params[:id])
  end

  def update
    @prey = Prey.find(params[:id])
    if @prey.update(prey_params)
      redirect_to prey_path(@prey)
    else
      render :edit
      flash[:alert] = "FAILURE"
    end
  end

  def destroy
    @prey = Prey.find(params[:id])
    @prey.destory
    redirect_to preysaurs_path
  end

  def prey_params
    params.require(:prey).permit(:name, :weight, dinosaur_ids: [])
  end
end
