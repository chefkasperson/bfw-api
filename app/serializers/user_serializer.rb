class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username
  has_many :children
end
