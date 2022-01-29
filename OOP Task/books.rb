require_relative 'storeItems'
require './fetchItems'


class Books < StoreItems    
    @bookfilename = 'book.txt'
    attr_accessor :author, :number_of_pages, :isbn
    def initialize(title,price, author, no_pages, id)
        super(title, price)
        @author = author
        @number_of_pages = no_pages
        @isbn = id
    end

    def self.addBook(book)
        newBook = "#{book.title},#{book.price},#{book.author},#{book.number_of_pages},#{book.isbn}\n"
        FetchItems.addItemToFile(@bookfilename, newBook)
    end

    def self.getAllBooks()
        return FetchItems.fetchItem(@bookfilename)
    end

    def self.listExpensiveBooks()
        return FetchItems.fetchExpensiveBooks(@bookfilename)
    end

    def self.getBooksInRange(from, to)
        return FetchItems.getBooksInRange(@bookfilename, from,to).to_s
    end
end