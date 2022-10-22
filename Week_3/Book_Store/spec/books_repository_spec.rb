require_relative "../lib/book_repository.rb"
require_relative "../lib/book.rb"

RSpec.describe BookRepository do
  def reset_books_table
    seed_sql = File.read('spec/Book_Store_Seeds.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'Book_Store' })
    connection.exec(seed_sql)
  end

  before(:each) do 
    reset_books_table
  end

  it " returns title, author and ID from book database" do
    book_repo = BookRepository.new
    books = book_repo.all

    expect(books.length).to eq 5
    expect(books[3].id).to eq ('4')
    expect(books[0].title).to eq 'Nineteen Eighty-Four'
    expect(books[4].author_name).to eq 'Edith Wharton'
    expect(books[1].id).to eq ('2')
    expect(books[1].title).to eq 'Mrs Dalloway'
    expect(books[2].author_name).to eq 'Jane Austen'
  end


  it "returns author names from book database" do
    book_repo = BookRepository.new
    expect(book_repo.authors).to eq ["George Orwell", "Virginia Woolf", "Jane Austen", "Bram Stoker", "Edith Wharton"]
  end

  it "returns titles from book database" do
    book_repo = BookRepository.new
    expect(book_repo.title).to eq ["Nineteen Eighty-Four", "Mrs Dalloway", "Emma", "Dracula", "The Age of Innocence"]
  end

  it "returns books based on ID from book database" do
    book_repo = BookRepository.new
    expect(book_repo.find(2)).to eq ["Mrs Dalloway", "Virginia Woolf"]
  end

  # it "creates a new book" do
  #   book_repo = BookRepository.new
  #   book_repo.create("Moonfleet", "JM Falkner")
  #   expect(book_repo.find(5)).to eq ["Moonfleet", "JM Falkner"]
  # end
end