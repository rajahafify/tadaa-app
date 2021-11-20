class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :purchasable, polymorphic: true, null: false
      t.integer :quantity

      t.timestamps
    end
  end
end
