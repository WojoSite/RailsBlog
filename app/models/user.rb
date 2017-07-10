class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_one :address

  validates :username, :password, :password_confirmation, presence: true
  validates :username, uniqueness: true
  validates :password, :confirmation => { :message => " cannot be blank, dude!" }
  validates :email, uniqueness: true
end
