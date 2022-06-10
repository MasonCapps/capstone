class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :sites
  has_many :orders
  has_many :carted_services
end
