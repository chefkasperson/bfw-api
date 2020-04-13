class Child < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :child_words
  has_many :words, through: :child_words
end
