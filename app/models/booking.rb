class Booking < ApplicationRecord
  include Purchasable

  belongs_to :bookable, polymorphic: true
end
