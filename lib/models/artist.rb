class Artist < ActiveRecord::Base 
    has_many :playlists
    has_many :songs, through: :playlists

    def self.artist_choices 
       choices = {}
        all.each do |artist| 
            choices[artist.stage_name] = artist
        end
       choices
    end

end