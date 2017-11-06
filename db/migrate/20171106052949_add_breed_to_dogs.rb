class AddBreedToDogs < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :breed, :text
  end
end
