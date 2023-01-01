class User < ApplicationRecord
    has_many :readinglists
    has_many :ratings
    has_many :reviews
    def favorite_book
        if ratings.count == 0
            return nil
        else 
            score = ratings.maximum("rating")
            #rel = Book.joins(:ratings).where("rating=",score)
            #return Book.find(rel)
            
            #Book.joins(:ratings).where("rating=",score)
            #Book.joins(ratings: :users).where("rating=?",score) #ruby code
            
            
            #sql code
            #Book.find_by_sql("SELECT * from books Inner Join ratings ON ratings.book_id = books.id INNER JOIN users ON ratings.user_id = users.id WHERE ratings.rating=5")
           
            rat = ratings.find_by rating: score
            book_id = rat.book_id 
            return Book.find(book_id)
            
            
            
            #return Book.find(rel)
            #Rating.joins(:books, :user).where("rating=?",score)
            #return Book.find_by id: rel.to_s

            #return Rating.where(rating: ratings.maximum)
            
            #rel =  Rating.where("rating=?",score).select("book_id")
            #rel = Rating.where(:rating , score)
            #rel2=rel.to_s
            #return Book.find_by id: rel2 
            #return rel.where("user_id=?",1).select("book_id")
            #return  Book.where("id=?",rel)
            
            #return Books.ids
            #return Book.take(rel)

            #n=ratings.book_id
            #return Book.find(n)
            #book_id = Rating.select("book_id").group("book_id").where("rating =?",score)
            #book_name = Book.select(:title).where(:id book_id)
            #return Book.find(book_id)
            #book = Rating.find_by rating: score
            #name = Book.find_by id: book
            #return book = Rating.select(:book_id).where(:rating score.to_i)
           # name = Book.find_by :id book
            #return name
        end
        
    end
    def books_in_common (user2_id)
        ans = [] #empty array for default
        user2 = User.find(user2_id)
        user2_ratings = user2.ratings.select(:book_id).where("rating > ?" ,0).to_a #has the book_id for user2
        user1_ratings = ratings.select(:book_id).where("rating > ?",0).to_a #has the book_ids for user1
        user2_ratings.each do |u2_rat|
            user1_ratings.each do |u_rat| #compares the ids
                if u2_rat == uI am just _rat
                    ans << u2_rat
                end
            end
        end
            return ans
    end
end
