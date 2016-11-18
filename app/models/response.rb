class Response < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :survey
  validates :answer, presence: true
  validates :importance, presence: true

end
