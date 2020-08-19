#destory


drake = Artist.create(stage_name: "Drake", popularity: 5, like: nil)
jcole = Artist.create(stage_name: "J. Cole", popularity: 4, like: nil)
lilpump = Artist.create(stage_name: "Lil Pump", popularity: 2, like: nil)

childsplay = Song.create(title: "Childs Play", featuring: nil, popularity: 5, like: nil)
greece = Song.create(title: "Greece", featuring: "DJ Khaled", popularity: 5, like: nil)
climbback = Song.create(title: "The Climb Back", featuring: nil, popularity: 4, like: nil)
kevinsheart = Song.create(title: "Kevin's Heart", featuring: nil, popularity: 3, like: nil)
iloveit = Song.create(title: "I love it", featuring: "Kanye West", popularity: 4, like: nil)

song1 = Playlist.create(artist: drake, song: childsplay)