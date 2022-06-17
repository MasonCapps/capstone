class Site < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  belongs_to :user
  has_many :services
  has_many :carted_services
  has_many :orders
  has_many :customers
end
