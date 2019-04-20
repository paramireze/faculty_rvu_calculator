class Question < ApplicationRecord
  belongs_to :category
  belongs_to :question, optional: true
  has_many :has_checkboxes

  validates :question, presence: false
end
