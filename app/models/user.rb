require_relative './application_record'
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
end