class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :word
      t.string :mean
      t.integer :remember_count

      t.timestamps
    end
  end
end
