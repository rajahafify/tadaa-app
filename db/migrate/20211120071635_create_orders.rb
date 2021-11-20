class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true
      t.integer :total_cents

      t.timestamps
    end
  end
end
