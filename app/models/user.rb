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

  def project_matches
    self.project_members.where(status: "pending")
  end

  def accepted_matches
    self.project_members.where(status: "accepted")
  end

  def awaiting_reply(project_id)
    self.project_matches.where(project_id: project_id)
  end

  def accepted?(project)
    proj = self.project_members.where(project_id: project.id)
    !proj.empty? && proj.status == "accepted"
  end

end
