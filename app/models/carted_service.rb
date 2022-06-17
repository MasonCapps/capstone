class CartedService < ApplicationRecord
  validates :service_id, presence: true
  validates :scheduled_date, presence: true
  belongs_to :site
  belongs_to :service
  belongs_to :user
end
