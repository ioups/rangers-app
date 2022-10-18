class AddAttributesToHeroes < ActiveRecord::Migration[7.0]
  def change
    add_column :heroes, :level, :integer
    add_column :heroes, :experience, :integer
    add_column :heroes, :base_movement, :integer
    add_column :heroes, :base_combat, :integer
    add_column :heroes, :base_shoot, :integer
    add_column :heroes, :base_armor, :integer
    add_column :heroes, :base_will, :integer
    add_column :heroes, :base_health, :integer
    add_column :heroes, :recruitment_points, :integer
    add_column :heroes, :first_draft, :boolean, default: true
    add_column :heroes, :notes, :text
  end
end
