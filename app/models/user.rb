class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  has_many :owned_projects, class_name: 'Project', foreign_key: 'manager_id'
  has_many :project_members
  has_many :projects, through: :project_members
  has_many :responses
  has_many :questions, through: :responses
  has_one :personality 

  # def projects
  #   ProjectMember.where(member_id: self.id)
  # end
end
