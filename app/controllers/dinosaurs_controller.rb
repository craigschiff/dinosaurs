class DinosaursController < ApplicationController

  def index
    @dinos = Dinosaur.all
  end

  def show
    @dino = Dinosaur.find(params[:id])
  end

  def new
    @dino = Dinosaur.new
  end

# fix DRY someday
  def create
    dino = Dinosaur.new(dino_params)
    if params[:type]
      type = DinosaurType.find_or_create_by(name: params[:type])
      dino.dinosaur_type = type
      if dino.save
        redirect_to dinosaur_path(dino)
      else
        render :new
        flash[:alert] = "Try again, LOSER"
      end
    elsif !params[:dinosaur][:dinosaur_type_id].blank?
      type = DinosaurTyoe.find(params[:dinosaur][:dinosaur_type_id].to_i)
      dino.dinosaur_type = type
      if dino.save
        redirect_to dinosaur_path(dino)
      else
        render :new
        flash[:alert] = "Try again, LOSER"
      end
    end
  end

  def edit
    @dino = Dinosaur.find(params[:id])
  end

  def update
    @dino = Dinosaur.find(params[:id])
    if @dino.update(dino_params)
      redirect_to dinosaur_path(@dino)
    else
      render :edit
      flash[:alert] = "FAILURE"
    end
  end

  def destroy
    @dino = Dinosaur.find(params[:id])
    @dino.destroy
    redirect_to dinosaurs_path
  end


  def dino_params
    params.require(:dinosaur).permit(:name, :weight, :badass_index, prey_ids: [])
  end

end
