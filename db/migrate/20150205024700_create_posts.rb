class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :post
      t.integer :comments
      t.string :user
      t.string :ip_user

      t.timestamps null: false
    end
  end
end
