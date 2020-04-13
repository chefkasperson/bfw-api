class Word < ApplicationRecord
  validates :word, presence: true
  has_many :child_words
  has_many :children, through: :child_words
end
