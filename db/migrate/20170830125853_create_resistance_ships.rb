class CreateResistanceShips < ActiveRecord::Migration[5.1]
  def change
    create_table :resistance_ships do |t|
      t.string :name
      t.string :code
      t.integer :capacity

      t.timestamps
    end
  end
end
