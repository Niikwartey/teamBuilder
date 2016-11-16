class Question < ApplicationRecord
  has_many :responses
  has_many :members, through: :responses
  has_many :managers, through: :responses
end
