class Client::AlbumsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_album, only: [ :show ]

  # GET /albums or /albums.json
  def index
    @albums = Album.all
  end

  # GET /albums/1 or /albums/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def album_params
      params.require(:album).permit(:title, :about, :release, :image, :credit, song_ids: [])
    end
end
