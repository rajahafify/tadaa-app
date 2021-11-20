class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.references :order, null: false, foreign_key: true
      t.references :purchasable, polymorphic: true, null: false
      t.integer :quantity
      t.integer :price_per_unit_cents

      t.timestamps
    end
  end
end
