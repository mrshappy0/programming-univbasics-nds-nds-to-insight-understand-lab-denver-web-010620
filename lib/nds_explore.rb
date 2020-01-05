$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
require 'pp'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles
  row_index = 0
  while row_index < directors_database.length do
    if directors_database[row_index][:name] == "Stephen Spielberg"
      column_index = 0
      while column_index < directors_database[row_index][:movies].length do
        puts directors_database[row_index][:movies][column_index][:title]
        column_index += 1
      end
    end
    row_index += 1 
  end
end

print_first_directors_movie_titles

# pretty_print_nds(directors_database)