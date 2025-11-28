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
    result = movie.destroy
    puts "Destroy returned: #{result}"
    puts "Movie destroyed? #{movie.destroyed?}"
    puts "Movie still exists? #{Movie.exists?(movie.id)}"
    rescue => e
    puts "Exception raised: #{e.class} - #{e.message}"
end
