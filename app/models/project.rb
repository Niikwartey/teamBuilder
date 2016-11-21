class Project < ApplicationRecord
  belongs_to :manager, class_name: 'User'
  has_many :project_members
  has_many :members, through: :project_members, source: :member
  validates :name, presence: true
  has_one :survey
  accepts_nested_attributes_for :survey


  def question_ids=(array)
    array.reject! { |x| x.empty? }
    array.each do |id|
      self.question_ids << id.to_i
    end
  end
end
