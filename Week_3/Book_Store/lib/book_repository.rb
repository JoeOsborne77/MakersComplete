require_relative "book.rb"

class BookRepository
  def all
    sql = 'SELECT id, title, author_name FROM books;'
    result_set = DatabaseConnection.exec_params(sql,[])

    books = []

    result_set.each do |book| 
      new_book = Book.new
      new_book.id = book['id']
      new_book.title = book ['title']
      new_book.author_name = book ['author_name']

      books << new_book
    end
    return books
  end

  def authors
    sql = 'SELECT author_name FROM books;'
    result_set = DatabaseConnection.exec_params(sql,[])

    authors = []

    result_set.each do |book| 
      new_book = Book.new
      new_book.id = book['id']
      new_book.title = book ['title']
      new_book.author_name = book ['author_name']

      authors << new_book.author_name
    end
    return authors
  end

  def title
    sql = 'SELECT title FROM books;'
    result_set = DatabaseConnection.exec_params(sql,[])

    titles = []

    result_set.each do |book| 
      new_book = Book.new
      new_book.id = book['id']
      new_book.title = book ['title']
      new_book.author_name = book ['author_name']

      titles << new_book.title
    end
    return titles
  end

  def find(num)
    sql = 'SELECT id, title, author_name FROM books;'
    result_set = DatabaseConnection.exec_params(sql,[])

    books = []

    result_set.each do |book| 
      new_book = Book.new
      new_book.id = book['id']
      new_book.title = book ['title']
      new_book.author_name = book ['author_name']

      new_book.id == "#{num}" ? books << new_book.title && books << new_book.author_name : nil
    end
    return books

  end

  # def create(book, author)
  #   sql = 'INSERT INTO books (title, author_name) VALUES ${book}, ${author};'
  #   result_set = DatabaseConnection.exec_params(sql,[])
  # end

  def update(book, book_id)
    # UPDATE books SET title = book WHERE id = book_id
  end

  def delete(book)
    # DELETE FROM books WHERE title = book;
  end
end
