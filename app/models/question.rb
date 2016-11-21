class Question < ApplicationRecord
  has_many :responses
  has_many :surveys

  def member_responses
    # q.responses.joins(:survey).where(:surveys =>{:project_id => nil})
    self.responses.joins(:survey).where(surveys: {project_id: nil})
  end
end
