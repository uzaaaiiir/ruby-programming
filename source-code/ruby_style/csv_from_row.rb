#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
def csv_from_row(accumulator, row)
  result = ""
  until row.empty?
    entry = row.shift.to_s
    if /[,"]/.match?(entry)
      entry = entry.gsub(/"/, '""')
      result << '"' << entry << '"'
    else
      result << entry
    end
    result << "," unless row.empty?
  end
  accumulator << result << CRLF
end

result = ""
query.each_row { |row| csv_from_row(result, row) }

http.write(result)
