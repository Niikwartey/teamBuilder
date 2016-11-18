class Response < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :survey
  validates_inclusion_of :answer, :in => [true,false]
  validates :importance, presence: true

end
