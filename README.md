# Musicly

> Your new favorite Music Application!!!

## Table of contents

- [General info](#general-info)
- [Technologies](#technologies)
- [Setup](#setup)
- [Features](#features)
- [Status](#status)
- [Inspiration](#inspiration)
- [Contact](#contact)
- [License](#license)

## General info

Musicly is a playlist application that makes it simple to reconnect with your favorite artists as well as songs. It also gives users the ability to see a playlist of their favorite songs. Join the Musicly family today!

## Technologies

- Ruby
- ActiveRecord - version 6.0.1
- Sinatra - version 2.0.7
- Sinatra-activerecord - version 2.0.14
- SQLite3 - version 1.4.1
- TTY-Box - version 0.6
- TTY-Prompt - version 0.22
- TTY-Spinner - version 0.9.3S

## Setup

To run this project, install it locally by cloning the GitHub repository and typing:
ruby
ruby runner.rb

## Code Examples

ruby
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
ruby
def artist_selection
@artist = @prompt.multi_select("Welcome #{@user}, Please select you favorite artists.", Artist.artist_choices)
if @artist == []
artist_selection
else
show_songs_by_artist(@artist)
end
end

## Features

- Creates user
- Database allows artists to be displayed to the user
- Database allows section of artists to return their songs
- Gives the user a list of their favorite songs
- Banners for beginning/end of application
- Loops artist selection until artist are selected
- Added spinner to simulate loading

## Status

Project is: finished with option to expand functionality and DRY out code.

## Inspiration

The inspiration for Musicly is the love of music, mixed with the love of technology.

## Contact

Created by [Terrell Cooper](https://www.linkedin.com/in/terrell-cooper-43252aaa/) and [Luis Garcia](https://www.linkedin.com/in/luis-garcia-83178b1b4/)
Feel free to contact us to talk music or talk code!!! 🎤

## License

[Click to view](https://github.com/luies24/Musicly_1/blob/master/LICENSE)
