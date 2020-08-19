class Song < ActiveRecord::Base 
    has_many :artist, through: :playlist 
end