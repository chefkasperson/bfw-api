class ChildSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :gender, :birthday
  belongs_to :user
  has_many :child_words
  has_many :words, through: :child_words
end
