class CreateResistanceMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :resistance_members do |t|
      t.string :name
      t.string :email
      t.string :code
      t.string :phone
      t.text :skills

      t.timestamps
    end
  end
end
