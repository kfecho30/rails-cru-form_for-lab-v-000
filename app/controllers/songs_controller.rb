class SongsController < ApplicationController
  
    def index
      @songs = Song.all
    end

    def show
      @song = Song.find(params[:id])
    end

    def new
      @song = Genre.new
    end

    def create
      @song = Genre.create(list_params)
      redirect_to genre_url(@genre)
    end

    def edit
      @song = Genre.find(params[:id])
    end

    def update
      @song = Genre.find(params[:id])
      @song.update(list_params)
      redirect_to genres_url
    end

    private
    def list_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
