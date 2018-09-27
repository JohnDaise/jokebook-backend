class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :likes
  has_many :jokes, through: :likes
end
