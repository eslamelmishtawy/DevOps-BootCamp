require_relative 'storeItems'
require_relative 'books'
require_relative 'magazine'
require 'flammarion'


# Read store items from database
StoreItems.setNumberOfItems(Books.getAllBooks.size)

# Initialazie the UI
f = Flammarion::Engraving.new
f.puts StoreItems.printNumberOfItems
f.dropdown(["Add a Book", "Add a Magazine"]) {
    
    |message_hash| 
    if message_hash["value"] == "Add a Book" 
        book = []
        b = Flammarion::Engraving.new
        b.input("Enter Title"){
            |message|  book.append(message["text"])
        }
        b.input("Enter price"){
            |message| book.append(message["text"])
        }
        b.input("Enter Author"){
            |message| book.append(message["text"])
        }
        b.input("Enter number of pages"){
            |message| book.append(message["text"])
        }
        b.input("Enter ISBN"){
            |message| book.append(message["text"])
        }
        b.button("Add Book") {
            book1 = Books.new(book[0],book[1],book[2],book[3],book[4])
            Books.addBook(book1)
            b.clear
            b.puts("please close window")
        }
    
    else
        magazine = []
        b = Flammarion::Engraving.new
        b.input("Enter Title"){
            |message|  magazine.append(message["text"])
        }
        b.input("Enter price"){
            |message| magazine.append(message["text"])
        }
        b.input("Enter publisher"){
            |message| magazine.append(message["text"])
        }
        b.input("Enter date"){
            |message| magazine.append(message["text"])
        }
        b.button("Add Magazine") {
            mag = Magazines.new(magazine[0],magazine[1],magazine[2],magazine[3])
            Magazines.addMagazine(mag)
            b.clear
            b.puts("please close window")
        }
    end

}
f.button("List Expensive Books") {
    b = Flammarion::Engraving.new
    for i in Books.listExpensiveBooks do
        b.puts i
    end
}
f.button("Get Books in range") {
    b = Flammarion::Engraving.new
    rangeBooks = ["0", "0"]
    b.input("from"){
        |message|  rangeBooks[0] = (message["text"])
    }
    b.input("to"){
        |message| rangeBooks[1] = (message["text"])
    }
    b.button("show books") {
        b.puts(Books.getBooksInRange(rangeBooks[0], rangeBooks[1]))
    }
    
}
f.button("Search Magazine By Date") {
    b = Flammarion::Engraving.new
    date = ""
    b.input("enter magazine date") { 
        |variable| date = variable["text"]
    }
    b.button("show magazine") {
        b.puts (Magazines.searchMagazineByDate(date))
    }
}

f.button("Search Magazine By Publisher") {
    b = Flammarion::Engraving.new
    publisher = ""
    b.input("enter magazine publicher") { 
        |variable| publisher = variable["text"]
    }
    b.button("show magazine") {
        b.puts (Magazines.searchMagazineByPublisher(publisher))
    }
}
f.button("List store items") {
    b = Flammarion::Engraving.new
    b. puts StoreItems.getAllStoreItems()
}

f.button("Delete Item") {
    b = Flammarion::Engraving.new
    item = ""
    b.input("Enter Item To Delete") {
        |variable| item = variable["text"]
    }
    b.button("Delete Item") {
        b.puts StoreItems.deletStoreItem(item)
    }
}

f.wait_until_closed
