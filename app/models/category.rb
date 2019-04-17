class Category < ApplicationRecord
  has_many :questions, required: false
  has_many :sub_categories, class_name: "Category", foreign_key: "parent_category_id"
  belongs_to :parent_category, class_name: "Category", foreign_key: 'parent_category_id', required: false

  scope :top_level_categories, -> { where(parent_category_id: nil) }
end
