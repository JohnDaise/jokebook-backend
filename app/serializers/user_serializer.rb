class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio

  has_many :likes
  has_many :jokes
  # has_many :jokes, through: :likes
end
