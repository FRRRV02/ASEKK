class Client::SongsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_artist, only: [:show]


  # GET /songs or /songs.json
  def index
    @songs = Song.all
  end

  # GET /songs/1 or /songs/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def song_params
      params.require(:song).permit(:title, :release, :composer, :file, :image, :producer, artist_ids: [])
    end
end
