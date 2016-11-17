class Response < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :survey
  validates_presence_of :answer
  validates_presence_of :importance

end
