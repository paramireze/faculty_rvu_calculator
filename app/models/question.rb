class Question < ApplicationRecord
  belongs_to :category
  belongs_to :has_checkboxes, required: false
end
