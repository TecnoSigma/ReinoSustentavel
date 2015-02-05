class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user
      t.string :email
      t.string :password
      t.integer :profile

      t.timestamps null: false
    end
  end
end
