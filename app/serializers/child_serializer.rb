class ChildSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :gender, :birthday
  belongs_to :user
end
