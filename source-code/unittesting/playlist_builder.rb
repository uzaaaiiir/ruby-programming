#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
class PlaylistBuilder
  Entry = Struct.new(:artist, :title)
  attr_reader :playlist, :db

  def initialize(db)
    @playlist = []
    @db = db
    db.connect
  end

  def close
    db.disconnect
  end

  def include_artist(name)
    @playlist = []
    7.times { @playlist << Entry.new("krauss", "") }
  end

  def include_title(name)
    @playlist = []
    13.times { @playlist << Entry.new("", "midnight") }
  end
end

class DBI
  def initialize(url)
    @url = url
    @connected = false
  end

  def connect
    @connected = true
  end

  def disconnect
    @connected = false
  end
end
