class User < ApplicationRecord
  require 'bcrypt'
  has_secure_password
  validates :name, presence: true
  validates :password, presence: true
  validates :email, presence: true,uniqueness: true
end
