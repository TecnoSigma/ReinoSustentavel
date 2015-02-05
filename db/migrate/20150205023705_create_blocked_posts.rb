class CreateBlockedPosts < ActiveRecord::Migration
  def change
    create_table :blocked_posts do |t|
      t.integer :id_post
      t.text :post
      t.datetime :blocked_date
      t.text :reason
      t.string :user
      t.string :ip_user

      t.timestamps null: false
    end
  end
end
