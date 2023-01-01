class CreateReadinglists < ActiveRecord::Migration[6.0]
  def change
    create_table :readinglists do |t|
      t.string :name, limit: 100, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
