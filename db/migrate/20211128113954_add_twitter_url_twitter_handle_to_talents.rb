class AddTwitterUrlTwitterHandleToTalents < ActiveRecord::Migration[7.0]
  def change
    add_column :talents, :twitter_url, :string
    add_column :talents, :twitter_handle, :string
  end
end
