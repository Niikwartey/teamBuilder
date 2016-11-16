class Project < ApplicationRecord
  has_many :members, class_name: User
  belongs_to :manager, class_name: User
end
