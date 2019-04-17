class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.integer :parent_category_id
      t.integer :lvl
      t.integer :lft
      t.integer :rgt
      t.date :retired

      t.timestamps
    end
  end
end
