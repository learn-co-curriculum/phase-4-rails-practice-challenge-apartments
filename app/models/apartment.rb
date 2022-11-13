class Apartment < ApplicationRecord
  has_many  :leases, dependent: :destroy
  has_many  :apartments, through: :leases
end
