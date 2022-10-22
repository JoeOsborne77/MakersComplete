# {{TABLE NAME}} Model and Repository Classes Design Recipe

## 1. Design and create the Table

If the table is already created in the database, you can skip this step.


2. Create Test SQL seeds


TRUNCATE TABLE artists RESTART IDENTITY;
TRUNCATE TABLE albums RESTART IDENTITY;

INSERT INTO artists (name, genre) VALUES ("The JB's", "Funk");
INSERT INTO artists (name, genre) VALUES ("Bob Dylan", "Singer-Songwriter");


INSERT INTO albums (title, release_year, artist_id) VALUES ("Food For Thought", "1972", '1');
INSERT INTO albums (title, release_year, artist_id) VALUES ("Groove Machine", "1979", '1');
INSERT INTO albums (title, release_year, artist_id) VALUES ("Tangled Up In Blue", "1975", '2');
INSERT INTO albums (title, release_year, artist_id) VALUES ("The Times They Are A-Changin'", "1964", '2');


## 3. Define the class names

class Artist
end

class ArtistRepository
end

## 4. Implement the Model class


class Artist
  attr_accessor :id, :name, :genre
end

## 5. Define the Repository Class interface


class ArtistRepository
  def all
    SELECT id, name, genre FROM artists;
  end

  def find(id)
    SELECT id, name, cohort_name FROM artists WHERE id = id
  end

  def create(artist, genre)
    INSERT INTO artists (name, genre) VALUES (artist, genre);
  end

  def update(current_artist, updated_name)
    UPDATE artists SET name = artist;
  end

  def delete(artist)
    DELETE FROM artists WHERE name = artist
  end
end

## 6. Write Test Examples

# 1
# Get all artists

repo = ArtistRepository.new

artists = repo.all
artists.length # =>  1
artists.first.id # =>  1
artists.first.name  # =>  "The JB's"

# 2
# Get a single artist

artists = ArtistRepository.new
artists.find(1)
artists.id  =>  1
artists.name  => "The JB's"
artists.genre => "Funk"

#3
# Create a new artist
artists = ArtistRepository.new
new_artist = Artist.new
new_artist.name("Tycho")
artists.create(new_artist)

#4 
# Update artist 

artists = ArtistRepository.new
artists = artists.update("The JB's", "Ben Howard")
artists.name  =>  "Ben Howard"


# 5
# Delete artist
artists= ArtistRepository.new
artists = artists.delete("The JB's")
artists.name => ""

  
## 7. Reload the SQL seeds before each test run

Running the SQL code present in the seed file will empty the table and re-insert the seed data.

This is so you get a fresh table contents every time you run the test suite.

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
```

## 8. Test-drive and implement the Repository class behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
