require_relative 'lib/database_connection'
require_relative 'lib/book_repository'


# We need to give the database name to the method `connect`.
DatabaseConnection.connect('Book_Store')

book_repository = BookRepository.new

book_repository.all.each do |book|
  p book 
end


