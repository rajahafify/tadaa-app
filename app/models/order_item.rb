class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :purchasable, polymorphic: true
end
