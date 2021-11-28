class AddInstagramUrlInstagramHandleToTalents < ActiveRecord::Migration[7.0]
  def change
    add_column :talents, :instagram_url, :string
    add_column :talents, :instagram_handle, :string
  end
end
