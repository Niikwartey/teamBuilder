class Personality < ApplicationRecord
  belongs_to :user
  validates_presence_of :intro_extroversion, :user_id, :sensing_intuition, :thinking_feeling, :judging_perceiving

  def self.questions
    ["Being around people energizes me.",
     "I need time alone to recharge my batteries.",
     "I pay attention to details and think in concrete terms.",
     "I prefer to look at the 'big picture' and think in abstract terms.",
     "I make decisions based on logic.",
     "I make decisions based on my values.",
     "I make plans in advance and prefer organization and structure.",
     "I 'go with the flow' and prefer to keep plans casual."]
  end

  def type
    self.intro_extroversion + self.sensing_intuition + self.thinking_feeling + self.judging_perceiving
  end

  def type_url
    "https://www.16personalities.com/#{type}-personality"
  end
end
