class ChildWord < ApplicationRecord
  belongs_to :child
  belongs_to :word
  
  def word_string
    word.word
  end

end
