class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :manager_id, :complete, :members

  belongs_to :user, serializer: UserSerializer
  has_many :project_members
  has_many :members
end
