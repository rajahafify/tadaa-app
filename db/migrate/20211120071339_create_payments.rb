class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :provider
      t.string :provider_reference
      t.integer :amount_cents
      t.string :status

      t.timestamps
    end
  end
end
