class Artist < ActiveRecord::Base 
    has_many :playlists
    has_many :songs, through: :playlists

    def self.artist_choices 
        Artist.pluck :stage_name
    end

end