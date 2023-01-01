class Author < ApplicationRecord
    has_many :books
    def most_liked_book
        
        fb = nil
        avg = 0
        books.all.each do |book|
            if book.ratings.average("rating") > avg
                fb = book
            end
        end
        #name = fb.title
        return fb 
    end
end
