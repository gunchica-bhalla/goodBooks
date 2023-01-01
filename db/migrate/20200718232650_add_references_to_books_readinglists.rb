class AddReferencesToBooksReadinglists < ActiveRecord::Migration[6.0]
  def change
      add_foreign_key :books_readinglists, :readinglists, column: :readinglist_id, primary_key: "id"      
      add_foreign_key :books_readinglists, :books, column: :book_id, primary_key: "id"         
  end
end
