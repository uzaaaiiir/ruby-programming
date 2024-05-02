#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
class Example
  def self.add_logging
    def log(msg)
      $stderr.puts("#{Time.now.strftime("%H:%M:%S: ")} #{self} (#{msg})")
    end
  end

  add_logging
end

ex = Example.new
ex.log("hello")
