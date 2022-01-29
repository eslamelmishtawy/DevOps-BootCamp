module FetchItems
    def self.fetchItem(filename)
        arr = []
        File.foreach(filename) {|line| arr.append(line.split(','))}
        return arr
    end

    def self.addItemToFile(filename, itemToAdd)
        File.open(filename, "a") {|f| f.write "#{itemToAdd}"}
    end

    def self.updateFile(filename, items)
        File.open(filename, "w") {|f| f.write "#{items.join("")}"}
    end

    def self.fetchExpensiveBooks(filename)
        arr = fetchItem(filename)
        expensiveBooks = {}
        for i in arr do
            expensiveBooks[i[0]] = i[1].to_i
        end
        return expensiveBooks.max(3)
    end

    def self.getBooksInRange(filename, from, to)
        arr = fetchItem(filename)
        bookRanges = {}
        for i in arr do
            if(i[1].to_i >= from.to_i && i[1].to_i <= to.to_i)
                bookRanges[i[0]] = i[1]
            end
        end
        if bookRanges.empty?
            return "No Books"
        else
            return bookRanges
        end
    end

    def self.searchMagazineByDate(filename, date)
        arr = fetchItem(filename)
        magazineWithDate = {}
        for i in arr do
            if(i[3].delete("\n") == date) 
                magazineWithDate[i[0]] = i[3].delete("\n")
            end
        end
        if magazineWithDate.empty?
            return "No Magazines with this date"
        else
            return magazineWithDate
        end
    end

    def self.searchMagazineByPublisher(filename, publisher)
        arr = fetchItem(filename)
        magazineWithPublisher = {}
        for i in arr do
            if(i[2] == publisher) 
                magazineWithPublisher[i[0]] = i[2]
            end
        end
        if magazineWithPublisher.empty?
            return "No Magazines by this publisher"
        else
            return magazineWithPublisher
        end
    end

    def self.deleteItemFromFile(filename, item)
        arr = File.readlines(filename)
        arr.delete(item.join(","))
        updateFile(filename, arr)
    end


end