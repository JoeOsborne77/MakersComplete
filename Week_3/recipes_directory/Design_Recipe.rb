## 3. Define the class names

Usually, the Model class name will be the capitalised table name (single instead of plural).
 The same name is then suffixed by `Repository` for the Repository class name.

# EXAMPLE
# Table name: recipes

class Recipes
end

class RecipesRepository
end

## 4. Implement the Model class

class Student
  attr_accessor :id, :name, :time(mins), :rating
end

## 5. Define the Repository Class interface

Your Repository class will need to implement methods for 



class RecipesRepository

  def all
    # Executes the SQL query:
    # SELECT id, name, cohort_name FROM students;

    # Returns an array of Student objects.
  end

  def find(id)
    # Executes the SQL query:
    # SELECT id, name, cohort_name FROM students WHERE id = $1;

    # Returns a single Student object.
  end

end

## 6. Write Test Examples


# 1
# Get all recipes

repo = RecipesRepository.new

recipes = repo.all
students.length # => 5
students[3].name # =>  'Butternut Squash & Coconut Curry'
students[2].rating # =>  5
students[4].time(mins) # =>  50
students[1].id # => 2

# 2
# find a single recipe

repo = RecipesRepository.new

recipes = repo.all
students.length # => 5
students[3].name # =>  'Butternut Squash & Coconut Curry'
students[2].rating # =>  5
students[4].time(mins) # =>  50
students[1].id # => 2

repo = RecipesRepository.new
recipes = repo.find(3)
expect(recipes.name).to eq('Egg and Cress Sandwich')
expect(recipes.time(mins)).to eq(10)
expect(recipes.id.to eq(3)


```

Encode this example as a test.

## 7. Reload the SQL seeds before each test run

Running the SQL code present in the seed file will empty the table and re-insert the seed data.

This is so you get a fresh table contents every time you run the test suite.

```ruby
# EXAMPLE

# file: spec/student_repository_spec.rb

def reset_students_table
  seed_sql = File.read('spec/seeds_students.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'students' })
  connection.exec(seed_sql)
end

describe StudentRepository do
  before(:each) do 
    reset_students_table
  end

  # (your tests will go here).
end


#8. Test-drive and implement the Repository class behaviour