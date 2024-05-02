#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
Dir.chdir("testdir")

Dir.glob("config.?")
Dir.glob("*.[a-z][a-z]")
Dir.glob("*.[^r]*")
Dir.glob("*.{rb,json}")
Dir.glob("*")
Dir.glob(%w[*.rb *.json])
Dir.glob("*", File::FNM_DOTMATCH)

Dir.chdir("..")
Dir.glob("code/**/fib*.rb")
Dir.glob("**/rdoc/fib*.rb")

Dir["config.?"]
Dir["*.json"]
Dir["*.rb"]
Dir["*.rb", "*.json"]
