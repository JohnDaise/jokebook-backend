class User < ApplicationRecord

  has_many :likes
  has_many :jokes
  # has_many :jokes, through: :likes

end
