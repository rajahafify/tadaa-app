class AddTalentServiceToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :talent_services, null: false, foreign_key: true
  end
end
