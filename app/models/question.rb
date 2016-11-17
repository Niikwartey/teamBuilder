class Question < ApplicationRecord
  has_many :responses
  has_many :surveys
end
