class Service < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :frequency, presence: true
  belongs_to :site
  has_many :carted_services
end
