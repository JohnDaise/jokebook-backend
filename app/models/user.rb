class User < ApplicationRecord
  attr_accessor :password

  has_many :likes
  has_many :jokes
  # has_many :jokes, through: :likes

  has_secure_password

  validates :name, uniqueness: {case_sensitive: false}





end
