#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
def read_data(attempt_count)
  data = @socket.read(512)
  if data.nil?
    raise RetryException.new(attempt_count < 10), "transient read error"
  end
  # .. normal processing
end
