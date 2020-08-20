class Song < ActiveRecord::Base 
    has_many :playlists
    has_many :artists, through: :playlists 

    def self.song_choices(songs)
        songs.map do |song| 
            #binding.pry
            song.title
        end
    end

end