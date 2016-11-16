class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :projects, as: :manager
  has_many :project_members, as: :member
  has_many :projects, through: :project_members
  has_many :responses
  has_many :questions, through: :responses
end
