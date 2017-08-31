class ChangeColumnResistanceMemberSkillToArray < ActiveRecord::Migration[5.1]
  def change
    change_column :resistance_members, :skills, "varchar[] USING (string_to_array(skills, ','))"
  end
end
