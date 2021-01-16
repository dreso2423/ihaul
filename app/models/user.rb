class User < ApplicationRecord
  has_many :bookings, foreign_key:'customer_id'
  has_many :trucks, foreign_key:'owner_id'
end
