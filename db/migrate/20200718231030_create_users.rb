class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name,limit: 70, null: false
      t.string :email, limit: 255, null: false

      t.timestamps
    end
  end
end
