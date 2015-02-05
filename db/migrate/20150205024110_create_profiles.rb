class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :profile_code
      t.string :description

      t.timestamps null: false
    end
  end
end
