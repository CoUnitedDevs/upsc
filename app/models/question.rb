class Question < ApplicationRecord
  has_many :quiz_questions
  belongs_to :category
  has_many :options, inverse_of: :question
  accepts_nested_attributes_for :options, reject_if: :all_blank, allow_destroy: true
end
