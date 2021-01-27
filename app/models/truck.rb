class Truck < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
