class Survey < ApplicationRecord
  has_many :responses
  has_many :questions, through: :responses

  accepts_nested_attributes_for :responses

<<<<<<< HEAD
  
=======
  def responses_attributes=(attributes)
    attributes.values.each do |attr|
      response = Response.new(attr)
      response.survey_id = self.id
      self.responses << response
    end
  end
>>>>>>> paige
end
