require "tty-prompt"

prompt = TTY::Prompt.new

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
        end
        artist_selection
    end

    def artist_selection 
        prompt.multi_select ("Welcome #{@user}, pick your favroite artist to start you experince")


    end
end
