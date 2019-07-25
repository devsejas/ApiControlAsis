class CreateAssistances < ActiveRecord::Migration[5.2]
  def change
    create_table :assistances do |t|
      t.references :user, foreign_key: true
      t.references :type, foreign_key: true
      t.string :code

      t.timestamps
    end
  end
end
