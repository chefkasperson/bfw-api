class WordSerializer
  include FastJsonapi::ObjectSerializer
  attributes :word, :language
  has_many :child_words
  has_many :children, through: :child_words
end
