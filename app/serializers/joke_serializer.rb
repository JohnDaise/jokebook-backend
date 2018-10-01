class JokeSerializer < ActiveModel::Serializer
  attributes :id, :joke, :user_id

  belongs_to :user
  has_many :likes
  # has_many :users, through: :likes
end
