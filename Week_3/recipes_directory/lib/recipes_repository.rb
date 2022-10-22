require_relative 'recipes.rb'

class RecipesRepository

  def all
    sql = 'SELECT id, name, time, rating FROM recipes;'
    result_set = DatabaseConnection.exec_params(sql,[])

    recipes = []

    result_set.each do |rec| 
      new_recipe = Recipe.new
      new_recipe.id = rec['id']
      new_recipe.name = rec ['name']
      new_recipe.time = rec ['time']
      new_recipe.rating = rec ['rating']

      recipes << new_recipe
    end
    return recipes
  end

  def find(id)
    sql = 'SELECT id, name, time, rating FROM recipes WHERE id = $1;'
    params = [id]
    result = DatabaseConnection.exec_params(sql, params)
    record = result[0]

    new_recipe = Recipe.new
    new_recipe.name = record ['name']
    new_recipe.time = record ['time']
    new_recipe.rating = record ['rating']
    return new_recipe

  end
end