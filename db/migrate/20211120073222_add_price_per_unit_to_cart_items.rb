class AddPricePerUnitToCartItems < ActiveRecord::Migration[7.0]
  def change
    add_column :cart_items, :price_per_unit_cents, :integer
  end
end
