class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :bookable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
