class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :joke_id

  belongs_to :user
  belongs_to :joke
end
