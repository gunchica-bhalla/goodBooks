class Book < ApplicationRecord
  belongs_to :author
  has_many :ratings
  has_and_belongs_to_many :readinglists
  has_many :reviews
    def num_ratings
        #return Book.find_by "SELECT COUNT(rating) FROM ratings WHERE"
        return ratings.count
    end
    def average_rating
        #return Book.find_by "SELECT AVG(rating) FROM ratings"
        #return ratings.average
        #return Book.find_by_sql("SELECT AVG(ratings.rating) FROM ratings
        #INNER JOIN users ON Ratings.user_id = users.id 
        #INNER JOIN books ON Ratings.book_id = books.id
        #GROUP BY ratings.book_id").to_a
        #Rating.average(:rating)
        return ratings.average("rating")
        #Book 
            #.select('ratings.rating')
       
    end
    def num_readinglists
        #ans = Book.find_by_sql("SELECT count(books_readinglists.readinglist_id) FROM books_readinglists 
        #INNER JOIN books ON books.id = books_readinglists.book_id 
        #WHERE books_readinglists.book_id = 1")
        #return books_readinglists.count(:book_id)
        #return books_readinglists.count
        #return ans[0].to_s
        return readinglists.count
    end
    
end
#INNER JOIN users ON ratings.user_id = users.id 
        #INNER JOIN books ON ratings.book_id = books.id