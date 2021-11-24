class UserSerializer < ActiveModel::Serializer
  attributes :id
  has_many :articles
end
