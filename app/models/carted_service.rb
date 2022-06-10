class CartedService < ApplicationRecord
  belongs_to :site
  belongs_to :service
  belongs_to :user
  belongs_to :order
end
