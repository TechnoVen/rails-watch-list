require_relative 'config/environment'

# Clear any existing data
Bookmark.destroy_all
Movie.destroy_all  
List.destroy_all

# Create test data
movie = Movie.create!(title: "Test Movie", overview: "Test overview")
list = List.create!(name: "Test List")
bookmark = Bookmark.create!(movie: movie, list: list, comment: "Great movie!")

puts "Movie has #{movie.bookmarks.count} bookmarks"

begin
    movie.destroy
    puts "ERROR: Movie was destroyed successfully (this shouldn't happen!)"
    rescue ActiveRecord::InvalidForeignKey => e
    puts "SUCCESS: Got expected ActiveRecord::InvalidForeignKey: #{e.message}"
    rescue => e
    puts "Got different exception: #{e.class} - #{e.message}"
end

# Test that we can still destroy movies without bookmarks
movie2 = Movie.create!(title: "Test Movie 2", overview: "Test overview 2")
puts "Movie2 has #{movie2.bookmarks.count} bookmarks"

begin
    movie2.destroy
    puts "SUCCESS: Movie2 without bookmarks was destroyed as expected"
    rescue => e
    puts "ERROR: Couldn't destroy movie2: #{e.class} - #{e.message}"
endrequire_relative 'config/environment'

# Clear any existing data
Bookmark.destroy_all
Movie.destroy_all  
List.destroy_all

# Create test data
movie = Movie.create!(title: "Test Movie", overview: "Test overview")
list = List.create!(name: "Test List")
bookmark = Bookmark.create!(movie: movie, list: list, comment: "Great movie!")

puts "Movie has #{movie.bookmarks.count} bookmarks"

begin
    movie.destroy
    puts "ERROR: Movie was destroyed successfully (this shouldn't happen!)"
    rescue ActiveRecord::InvalidForeignKey => e
    puts "SUCCESS: Got expected ActiveRecord::InvalidForeignKey: #{e.message}"
    rescue => e
    puts "Got different exception: #{e.class} - #{e.message}"
end

# Test that we can still destroy movies without bookmarks
movie2 = Movie.create!(title: "Test Movie 2", overview: "Test overview 2")
puts "Movie2 has #{movie2.bookmarks.count} bookmarks"

begin
    movie2.destroy
    puts "SUCCESS: Movie2 without bookmarks was destroyed as expected"
    rescue => e
    puts "ERROR: Couldn't destroy movie2: #{e.class} - #{e.message}"
endrequire_relative 'config/environment'

# Clear any existing data
Bookmark.destroy_all
Movie.destroy_all  
List.destroy_all

# Create test data
movie = Movie.create!(title: "Test Movie", overview: "Test overview")
list = List.create!(name: "Test List")
bookmark = Bookmark.create!(movie: movie, list: list, comment: "Great movie!")

puts "Movie has #{movie.bookmarks.count} bookmarks"

begin
    movie.destroy
    puts "ERROR: Movie was destroyed successfully (this shouldn't happen!)"
    rescue ActiveRecord::InvalidForeignKey => e
    puts "SUCCESS: Got expected ActiveRecord::InvalidForeignKey: #{e.message}"
    rescue => e
    puts "Got different exception: #{e.class} - #{e.message}"
end

# Test that we can still destroy movies without bookmarks
movie2 = Movie.create!(title: "Test Movie 2", overview: "Test overview 2")
puts "Movie2 has #{movie2.bookmarks.count} bookmarks"

begin
    movie2.destroy
    puts "SUCCESS: Movie2 without bookmarks was destroyed as expected"
    rescue => e
    puts "ERROR: Couldn't destroy movie2: #{e.class} - #{e.message}"
end
