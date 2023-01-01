class CreateJoinTableBooksReadinglists < ActiveRecord::Migration[6.0]
  def change
    create_join_table :books, :readinglists do |t|
      # t.index [:book_id, :readinglist_id]
      t.index [:readinglist_id, :book_id], unique: true
    end
  end
end
