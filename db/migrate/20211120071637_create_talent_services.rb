class CreateTalentServices < ActiveRecord::Migration[7.0]
  def change
    create_table :talent_services do |t|
      t.references :talent, null: false, foreign_key: true
      t.string :name
      t.text :descriptions
      t.integer :amount_cents
      t.string :currency

      t.timestamps
    end
  end
end
