class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :checked_out_at
      t.string :currency
      t.string :total_amount_cents

      t.timestamps
    end
  end
end
