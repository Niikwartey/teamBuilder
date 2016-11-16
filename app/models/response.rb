class Response < ApplicationRecord
  belongs_to :member, class_name: User
  belongs_to :manager, class_name: User
  belongs_to :question
  belongs_to :survey
end
