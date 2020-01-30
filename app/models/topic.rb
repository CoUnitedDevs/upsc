class Topic < ApplicationRecord
  belongs_to :current_affair
  belongs_to :category
end
