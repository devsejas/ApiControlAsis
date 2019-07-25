class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :slug
      t.string :name
      t.text :permissions

      t.timestamps
    end
  end
end
