require_relative 'lib/database_connection'
require_relative 'lib/recipes_repository'


# We need to give the database name to the method `connect`.
DatabaseConnection.connect('recipes_directory_test')

recipe_repository = RecipesRepository.new

recipe_repository.all.each do |rec|
  p rec 
end
