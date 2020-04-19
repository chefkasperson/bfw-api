class Child < ApplicationRecord
  validates :name, presence: true
  validates :birthday, presence: true
  belongs_to :user
  has_many :child_words
  has_many :words, through: :child_words

  
  def age (date2 = Time.now)
    date1 = self.birthday

    ((date2 - date1) / 31536000 * 12).to_i
  end
end
