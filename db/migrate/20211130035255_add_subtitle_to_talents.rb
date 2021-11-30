class AddSubtitleToTalents < ActiveRecord::Migration[7.0]
  def change
    add_column :talents, :subtitle, :string
  end
end
