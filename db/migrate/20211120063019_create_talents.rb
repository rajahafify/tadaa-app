class CreateTalents < ActiveRecord::Migration[7.0]
  def change
    create_table :talents do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
