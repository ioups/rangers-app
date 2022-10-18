class CreateCompanions < ActiveRecord::Migration[7.0]
  def change
    create_table :companions do |t|
      t.string :name
      t.boolean :template, default: false
      t.timestamps
    end
  end
end
