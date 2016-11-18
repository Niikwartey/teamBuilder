class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email
  
  has_many :owned_projects
  has_many :projects
end
