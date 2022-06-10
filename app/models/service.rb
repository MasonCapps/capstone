class Service < ApplicationRecord
  belongs_to :site 
  has_many :carted_services
end
