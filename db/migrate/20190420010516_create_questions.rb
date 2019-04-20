class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :category, foreign_key: true
      t.string :label_text
      t.string :name
      t.string :helper_text
      t.boolean :required
      t.integer :order
      t.string :value
      t.integer :has_checkboxes, null: true
      t.boolean :is_text_area

      t.timestamps
    end
  end
end
