class Album < ApplicationRecord
    has_one_attached :image

    has_many :album_songs, dependent: :destroy
    has_many :songs, through: :album_songs
    
end
