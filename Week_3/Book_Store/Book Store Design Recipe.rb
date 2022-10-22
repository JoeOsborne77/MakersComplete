

## 1. Design and create the Table


2. Create Test SQL seeds

TRUNCATE TABLE books RESTART IDENTITY; 

INSERT INTO books (title, author_name) VALUES ('Moonfleet', 'JM Falkner');
INSERT INTO books (title, author_name) VALUES ('A New Earth', 'Eckhart Tolle');


## 3. Define the class names
class Book
end

class BookRepository
end

## 4. Implement the Model class

class Book
  attr_accessor :id, :title, :author_name
end

## 5. Define the Repository Class interface

class BookRepository
  def all
    #SELECT id, title, author_name FROM books;
  end

  def authors
    #SELECT author_name FROM books;
  end

  def title
    #SELECT title FROM books;
  end

  def find(id)
    #SELECT id, title, author_name FROM books WHERE id = id;
  end

  def create(book, author)
    # INSERT INTO books (title, author_name)
    #   VALUES(book, author)
  end

  def update(book, book_id)
    # UPDATE books SET title = book WHERE id = book_id
  end

  def delete(book)
    # DELETE FROM books WHERE title = book;
  end
end

## 6. Write Test Examples

1
# Get all books

book_repo = BookRepository.new

books = book_repo.all
books.length # =>  5

books[3].id # =>  4
books[0].title # =>  'Nineteen Eighty-Four'
books[4].author_name # =>  'Edith Wharton'
books[1].id # =>  2
books[1].title # =>  'Mrs Dalloway'
books[2].author_name # =>  'Jane Austen'



# 2
# Get a single student

book_repo = BookRepository.new
books = book_repo.find(1)

books.id # =>  1
books.author_name # =>  'Virginia Woolf'
books.title # =>  'Mrs Dalloway'

#3 
# create book

book_repo = BookRepository.new
books = book_repo.create('Moonfleet', 'JM Falkner')

book[5].title # => 'Moonfleet'
book[5].author_name # => 'JM Falkner'

#4 
#Update book

book_repo = BookRepository.new
books = book_repo.update('Pride and Prejudice', 3)
books[2].title # =>  ''Pride and Prejudice'

#5 
#delete book

book_repo = BookRepository.new
books = book_repo.delete('Nineteen Eighty-Four')
books[0].title # => 'Mrs Dalloway'



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
```

## 8. Test-drive and implement the Repository class behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
