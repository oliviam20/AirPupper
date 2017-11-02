class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.text :description
      t.integer :age
      t.boolean :tricks
      t.boolean :kid_friendly
      t.boolean :obedient
      t.boolean :energetic
      t.boolean :small
      t.boolean :medium
      t.boolean :large

      t.timestamps
    end
  end
end
