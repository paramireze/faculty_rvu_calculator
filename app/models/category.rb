class Category < ApplicationRecord
  has_many :questions
  has_many :sub_categories, class_name: "Category", foreign_key: "parent_category_id"
  belongs_to :parent_category, class_name: "Category", foreign_key: 'parent_category_id', optional: true

  validates :sub_categories, :parent_category, :questions, presence: false

  scope :top_level_categories, -> { where(parent_category_id: nil) }
end
