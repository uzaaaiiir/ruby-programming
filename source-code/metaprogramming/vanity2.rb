#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
module VanityPuts
  refine Object do
    private

    def puts(*args)
      args.each do |arg|
        Kernel.puts("Dave says: #{arg}")
      end
    end
  end
end

class DavesStuff
  using VanityPuts

  def greet(msg)
    puts msg
  end
end

puts "Calling DavesStuff"
DavesStuff.new.greet("in DavesStuff")
puts "back"
