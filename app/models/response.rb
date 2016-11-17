class Response < ApplicationRecord
  belongs_to :user
  belongs_to :question
<<<<<<< HEAD
  belongs_to :survey
  validates_presence_of :answer
  validates_presence_of :importance

=======
  belongs_to :survey, optional: true
>>>>>>> paige
end
