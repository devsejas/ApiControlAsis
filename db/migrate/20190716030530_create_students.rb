class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :fullname
      t.integer :code_siss
      t.string :ci
      t.string :email
      t.string :address
      t.string :phone
      t.string :mobile
      t.boolean :active

      t.timestamps
    end
  end
end
