class CreateStresses < ActiveRecord::Migration[6.1]
  def change
    create_table :stresses do |t|
      t.string :name
      t.string :boolean
      t.integer :user_id

      t.timestamps
    end
  end
end
