require_relative "../lib/recipes.rb"
require_relative "../lib/recipes_repository.rb"

RSpec.describe RecipesRepository do
  def reset_recipes_table
    seed_sql = File.read('spec/recipe_seeds.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
    connection.exec(seed_sql)
  end

  before(:each) do 
      reset_recipes_table
    end
    
    it "returns all recipes" do
      repo = RecipesRepository.new
        recipes = repo.all
        expect(recipes.length).to eq (5)
        expect(recipes[3].name).to eq('Butternut Squash & Coconut Curry')
        expect(recipes[2].rating).to eq ('3')
        expect(recipes[4].time).to eq ('50')
        expect(recipes[1].id).to eq ('2')
    end

    it "finds one recipe" do
      repo = RecipesRepository.new
      recipes = repo.find(3)
      expect(recipes.name).to eq('Egg and Cress Sandwich')
      expect(recipes.time).to eq('10')

  end
end