$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
require 'pp'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles(directors_database)
  row_index = 0
  while row_index < directors_database.length do
    if nds[row_index][:name] == "Stephen Spielberg"
      column_index = 0
      while column_index < directors_database[row_index][:movies].length do
        puts nds[row_index][:movies][column_index][:title]
        column_index += 1
      end
      row_index += 1 
    end
  end
end

print_first_directors_movie_titles(directors_database)

# pretty_print_nds(directors_database)