class StoreItems
    attr_accessor :title, :price
    @@number_of_storeItems = 0
    def initialize(t, pri)
        @title = t
        @price = pri
        @@number_of_storeItems += 1
    end

    def self.setNumberOfItems(n)
        @@number_of_storeItems = n
    end
    
    def self.printNumberOfItems()
        return "Store contain #@@number_of_storeItems items"
    end

    def self.getAllStoreItems()
        all_items = "Books \n"
        Books.getAllBooks.each {|book| all_items += "#{book}\n"} 
        all_items += "\n\n Magazines \n"
        Magazines.getAllMagazines.each {|mag| all_items += "#{mag}\n"}
        return all_items
    end

    def self.deletStoreItem(item)
        books = []
        mags = []
        Books.getAllBooks.each {|book| books.append(book[0])}
        Magazines.getAllMagazines.each {|mag| mags.append(mag[0])}
        if books.include? item
            deletedItem = Books.getAllBooks[books.find_index(item)]
            FetchItems.deleteItemFromFile('book.txt', Books.getAllBooks[books.find_index(item)])
            return "Item #{deletedItem} is deleted"
        elsif mags.include? item
            deletedItem = Magazines.getAllMagazines[mags.find_index(item)]
            FetchItems.deleteItemFromFile('magazine.txt', Magazines.getAllMagazines[mags.find_index(item)])
            return "Item #{deletedItem} is deleted"     
        else
            return "no item to delete"
        end
    end
end

