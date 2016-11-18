class Personality < ApplicationRecord
  belongs_to :user

  def self.questions
    ["Being around others energizes me. I am more likely to speak before thinking.",
     "I need time alone to recharge my energy. I am more likely to think before I speak.",
     "I pay attention to details and think in concrete terms.",
     "I prefer to look at the 'big picture' and think in abstract terms.",
     "I make decisions based on logic.",
     "I make decisions based on values."
    ]
  end
end
