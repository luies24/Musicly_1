require "tty-prompt"

class Cli 
    attr_reader :user 

    def initialize user=nil 
        @user = nil 
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
            #binding.pry
        end
        artist_selection
    end

    def artist_selection 
        puts "Welcome #{@user}, pick your favroite artist to start you experince"


    end
end
