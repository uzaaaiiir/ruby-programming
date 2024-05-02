#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
def dump_call_stack
  file_contents = {}
  puts "File            Line  Source Line"
  puts "---------------+----+------------"
  caller.each do |position|
    match_data = position.match(/\A(.*?):(\d+)/)
    next if match_data.nil?
    file = match_data[1]
    line = Integer(match_data[2])
    file_contents[file] ||= File.readlines(file)
    printf("%-15s:%3d - %s",
      File.basename(file),
      line,
      file_contents[file][line - 1].lstrip)
  end
end
