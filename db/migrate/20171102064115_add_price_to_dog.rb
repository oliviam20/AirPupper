class AddPriceToDog < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :price, :float
  end
end
