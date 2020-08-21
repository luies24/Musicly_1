require "tty-prompt"

prompt = TTY::Prompt.new

class Cli 

    def tty_prompt
        TTY::Prompt.new( 
            symbols: { marker: '🎤'}, 
            active_color: :blue,
            help_color: :bright_blue 
        )
    end
    
    def banner
        puts App.header
    end

    attr_reader :user 

    def initialize user=nil 
        @user = nil 
        @prompt = tty_prompt
        @count = 0
    end

    def start
        banner
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
        show_songs_by_artist(@artist)
    end

    def show_songs_by_artist selection
       songs = selection.map do |artist|
            artist.songs
        end.flatten
        song_selection(songs)
    end

    def song_selection(songs)
        favorite_songs = @prompt.multi_select("Select you fa", Song.song_choices(songs))
        final_message(@artist, favorite_songs)
    end

    def final_message artist, songs
        puts "Your playlist was created!"
        puts "It includes the following:
                "
        songs.each {|song| puts "-#{song}"}
        exit_app
    end
    
    def exit_app
        puts "Wow #{@user}, thats a great playlist!
        "
        puts App.exit
        
        
    end
 end
