class Order < ApplicationRecord
  has_many :carted_services
  belongs_to :site
  belongs_to :user
end
