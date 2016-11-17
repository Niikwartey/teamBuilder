class Response < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :survey, optional: true
  # validates :answer, presence: true
  # validates :importance, presence: true

end
