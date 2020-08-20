Artist.destroy_all 
Song.destroy_all 
Playlist.destroy_all 


drake = Artist.create(stage_name: "Drake", popularity: 5, like: nil)
jcole = Artist.create(stage_name: "J. Cole", popularity: 4, like: nil)
chrisbrown = Artist.create(stage_name: "Lil Pump", popularity: 2, like: nil)
jackharlow = Artist.create(stage_name: "Jack Harlow", popularity: 3, like: nil)
lilbaby = Artist.create(stage_name: "Lil Baby", popularity: 4, like: nil)
kanye = Artist.create(stage_name: "Kanye", popularity: 5, like: nil)
popsmoke = Artist.create(stage_name: "Pop Smoke", popularity: 2, like: nil)
cardib = Artist.create(stage_name: "Cardi B", popularity: 5, like: nil)
future = Artist.create(stage_name: "Future", popularity: 4, like: nil)
migos = Artist.create(stage_name: "Migos", popularity: 5, like: nil)
postmalone = Artist.create(stage_name: "Post Malone", popularity: 5, like: nil)


childsplay = Song.create(title: "Childs Play", featuring: nil, popularity: 5, like: nil)
greece = Song.create(title: "Greece", featuring: "DJ Khaled", popularity: 5, like: nil)
climbback = Song.create(title: "The Climb Back", featuring: nil, popularity: 4, like: nil)
kevinsheart = Song.create(title: "Kevin's Heart", featuring: nil, popularity: 3, like: nil)
noguidence = Song.create(title: "No Guidance", featuring: "Drake", popularity: 4, like: nil)
whatspoppin = Song.create(title: "Whats Poppin", featuring: nil, popularity: 4, like: nil)
drip = Song.create(title: "Drip Too Hard ", featuring: nil, popularity: 4, like: nil)
yesindeed = Song.create(title: "Yes Indeed", featuring: "Drake", popularity: 5, like: nil)
lights = Song.create(title: "All of the Lights", featuring: nil, popularity: 4, like: nil)
onme = Song.create(title: "Got It on Me ", featuring: nil, popularity: 3, like: nil)
bodak = Song.create(title: "Bodak Yellow", featuring: nil, popularity: 5, like: nil)
lowlife = Song.create(title: "Low Life", featuring: "The Weeknd", popularity: 4, like: nil)
badnb = Song.create(title: "Bad and Boujee", featuring: nil, popularity: 5, like: nil)
stirfry = Song.create(title: "Stir Fry", featuring: nil, popularity: 4, like: nil)
sunflowers = Song.create(title: "Sunflowers", featuring: "Swae Lee", popularity: 4, like: nil)
rich = Song.create(title: "Rich and Sad", featuring: nil, popularity: 5, like: nil)
psycho = Song.create(title: "Psycho", featuring: "Ty dolla $ign", popularity: 5, like: nil)
wow = Song.create(title: "Wow.", featuring: "Drake", popularity: 4, like: nil)

childsplay = Playlist.create(artist: drake, song: childsplay)
greece = Playlist.create(artist: drake, song: greece)
climbback = Playlist.create(artist: jcole, song: climbback)
kevinsheart = Playlist.create(artist: jcole, song: kevinsheart)
noguidence = Playlist.create(artist: chrisbrown, song: noguidence)
whatspoppin = Playlist.create(artist: jackharlow, song: whatspoppin)
drip = Playlist.create(artist: lilbaby, song:drip )
yesindeed = Playlist.create(artist: lilbaby, song: yesindeed)
lights = Playlist.create(artist: kanye, song: lights)
onme = Playlist.create(artist: popsmoke, song: onme)
bodak = Playlist.create(artist: cardib, song: bodak)
lowlife = Playlist.create(artist: future, song: lowlife)
badnb = Playlist.create(artist: migos, song: badnb)
stirfry = Playlist.create(artist: migos, song: stirfry)
sunflowers = Playlist.create(artist: postmalone, song: sunflowers)
rich = Playlist.create(artist: postmalone, song: rich)
psycho = Playlist.create(artist: postmalone, song: psycho)
wow = Playlist.create(artist: postmalone, song: wow)
