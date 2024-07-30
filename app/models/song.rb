class Song < ApplicationRecord
    has_one_attached :file

    extend FriendlyId
    friendly_id :title, use: :slugged

    has_many :artist_songs, dependent: :destroy
    has_many :artist, through: :artist_songs

    has_one :album_song, dependent: :destroy
    has_one :album, through: :album_song

    has_many :playlist_songs
    has_many :playlist, through: :playlist_songs
    
end
