class JokeSerializer < ActiveModel::Serializer
  attributes :id, :joke

  has_many :likes
  has_many :users, through: :likes
end
