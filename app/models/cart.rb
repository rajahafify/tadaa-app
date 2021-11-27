class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy

  accepts_nested_attributes_for :cart_items, allow_destroy: true
end