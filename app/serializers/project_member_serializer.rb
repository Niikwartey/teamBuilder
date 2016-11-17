class ProjectMemberSerializer < ActiveModel::Serializer
  attributes :id, :project, :member

  belongs_to :project
  belongs_to :member
end
