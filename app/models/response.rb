class Response < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :survey, optional: true
end
