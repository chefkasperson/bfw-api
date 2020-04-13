class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username
  has_many :children
  has_many :words, through: :children
end
