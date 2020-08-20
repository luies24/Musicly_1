require "tty-prompt"

prompt = TTY::Prompt.new

class Cli 

    def tty_prompt
        TTY::Prompt.new 
    end

    attr_reader :user 

    def initialize user=nil 
        @user = nil 
        @prompt = tty_prompt
    end

    def start
        puts "Welcome Musicly, have you been here before? (y/n)"
        answer = gets.strip 
        if answer == "y"
            puts "Please type in your username!"
            @user = gets.strip
        else 
            puts "Please create a username to join the Musicly family!"
            @user = gets.strip 
        end
        artist_selection
    end
    #binding.pry

    def artist_selection 
        @artist = @prompt.multi_select("Welcome #{@user}, Please select you favorite artists", Artist.artist_choices)
        selection = @artist
        show_songs_by_artist(selection)
    end

    def show_songs_by_artist selection
        selection.select do |artist|
            artist == all[stage_name]
            
        end
    end
 end
