class User < ApplicationRecord
  # attr_accessor :password

  has_secure_password
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  # validates :password, presence: true

  has_many :likes
  has_many :jokes
  # has_many :jokes, through: :likes

end
