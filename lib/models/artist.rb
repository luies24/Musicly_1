class Artist < ActiveRecord::Base 
    has_many :songs

    def self.artist_choices 
        Artist.pluck :stage_name
    end
end