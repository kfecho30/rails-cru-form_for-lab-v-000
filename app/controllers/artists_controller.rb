class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(list_params)
    redirect_to artist.url(@artist)
  end


  private
  def list_params
    params.require(:artist).permit(:name, :bio)
  end
end
