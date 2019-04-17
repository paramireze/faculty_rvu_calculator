class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :category, foreign_key: true
      t.string :value
      t.string :label_text
      t.string :name
      t.string :helper_text
      t.boolean :required
      t.integer :order
      t.boolean :is_text_area
      t.references :has_checkboxes, foreign_key: true

      t.timestamps
    end
  end
end
