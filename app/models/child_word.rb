class ChildWord < ApplicationRecord
  belongs_to :child
  belongs_to :word
  
  def word_string
    word.word
  end

  def age_learned(date=self.created_at)
    self.child.age(date)
  end
end
