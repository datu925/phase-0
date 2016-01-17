# Create a Playlist from Driver Code

# I worked on this challenge with Timur.
# I spent 1 hours on this challenge.


# Pseudocode

# define Song class
  #initialize playlist with initial songs
  #play: display title of song and band

# define Playlist class
  #initialize playlist with initial songs
  #add: for some number of input songs, add additional songs to playlist
  #num_of_tracks: return number of songs in playlist
  #remove: remove song from playlist
  #includes?: return whether the playlist contains a particular song based on a search
  #play_all: for all songs in playlist, play them

# Initial Solution

# class Song
#   def initialize(title, band)
#     @title = title
#     @band = band
#   end

#   def play
#     print "Playing " + @title + " by " + @band + "\n"
#   end
# end

# class Playlist
#   def initialize(*songs)
#     @songs = songs
#   end

#   def add(*songs)
#     songs.each { |song|
#       @songs << song
#     }
#   end

#   def num_of_tracks
#     return @songs.length
#   end

#   def remove(song)
#     @songs.delete(song)
#   end

#   def includes?(song)
#     return @songs.include?(song)
#   end

#   def play_all
#     @songs.each { |song|
#       song.play
#     }
#   end
# end


# Refactored Solution

class Song
  attr_reader :title, :band
  def initialize(title, band)
    @title = title
    @band = band
  end

  def play
    print "Playing " + @title + " by " + @band + "\n"
  end
end

class Playlist
  attr_accessor :songs
  def initialize(*songs)
    @songs = songs
  end

  def add(*new_songs)
    songs.concat(new_songs)
  end

  def num_of_tracks
    return songs.length
  end

  def remove(song)
    songs.delete(song)
  end

  def includes?(song)
    return songs.include?(song)
  end

  def play_all
    songs.each { |song| song.play }
  end

  def display
    printf("%25s%25s\n","Song","Band")
    printf("%25s%25s\n","====================","====================")
    songs.each { |song| printf("%25s%25s\n", song.title ,song.band) }
  end
end




# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection

=begin
What concepts did you review in this challenge?

Lots of things - classes, looping, attr methods, printf, etc.

What is still confusing to you about Ruby?

I find Ruby to be really fun to work with relative to other languages where the
syntax is more of a bear (*cough JavaScript). I don't really understand the finer
 points of procs but we haven't even covered them yet, so not worried about that.

What are you going to study to get more prepared for Phase 1?

Honestly, I'm feeling pretty good about Ruby. I will probably spend my time
practicing Sublime shortcuts and random terminal stuff so I am as efficient as
possible, rather than going deeper into Ruby in the next day or two.

=end