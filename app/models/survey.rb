class Survey < ApplicationRecord
  has_many :responses
  has_many :questions, through: :responses

  accepts_nested_attributes_for :responses

  
end
