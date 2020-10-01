class AddRateToGourmet < ActiveRecord::Migration[5.2]
  def change
    add_column :gourmets, :rate, :float
  end
end
