class Project < ApplicationRecord
  belongs_to :manager, class_name: User
  has_many :project_members
  has_many :members, through: :project_members
end
