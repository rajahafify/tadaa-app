class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :purchasable, polymorphic: true
end
