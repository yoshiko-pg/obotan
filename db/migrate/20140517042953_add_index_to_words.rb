class AddIndexToWords < ActiveRecord::Migration
  def change
    add_index :words, [:user_id, :category_id, :word], unique: true
    add_index :words, [:user_id, :category_id, :mean], unique: true
  end
end
