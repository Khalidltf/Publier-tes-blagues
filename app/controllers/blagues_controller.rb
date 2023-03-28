class BlaguesController < ApplicationController
  def index
    @blagues = Blague.all
  end

  def show
    @blague = Blague.find(params[:id])
  end

  def new
    @blague = Blague.new
  end

  def edit
    @blague = Blague.find(params[:id])
  end

  def create
    @blague = Blague.new(params_blague)
    if @blague.save
      redirect_to @blague
    else
      render :new
    end
  end

  def update
    @blague = Blague.find(params[:id])
    if @blague.update(params_blague)
      redirect_to @blague
    else
      render :edit
    end
  end

  def destroy

    @blague = Blague.find(params[:id])
    @blague.destroy
    redirect_to blagues_path, status: :see_other
  end


  private

  def params_blague
    params.require(:blague).permit(:nom, :contenu, :auteur)
  end
end
