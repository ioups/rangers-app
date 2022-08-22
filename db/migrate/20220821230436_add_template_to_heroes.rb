class AddTemplateToHeroes < ActiveRecord::Migration[7.0]
  def change
    add_column :heroes, :template, :boolean, default: false
  end
end
