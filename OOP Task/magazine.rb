require_relative 'storeItems'
require './fetchItems'


class Magazines < StoreItems    
    @magazinefilename = 'magazine.txt'
    attr_accessor :publisher, :date
    def initialize(title,price, publisher, date)
        super(title, price)
        @publisher = publisher
        @date = date
    end

    def self.getAllMagazines()
        return FetchItems.fetchItem(@magazinefilename)
    end

    def self.addMagazine(magazine)
        newMagazine = "#{magazine.title},#{magazine.price},#{magazine.publisher},#{magazine.date}\n"
        FetchItems.addItemToFile(@magazinefilename, newMagazine)
    end

    def self.searchMagazineByDate(date)
        return FetchItems.searchMagazineByDate(@magazinefilename, date).to_s
    end

    def self.searchMagazineByPublisher(publisher)
        return FetchItems.searchMagazineByPublisher(@magazinefilename, publisher).to_s
    end

end