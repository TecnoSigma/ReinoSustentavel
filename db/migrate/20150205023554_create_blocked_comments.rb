class CreateBlockedComments < ActiveRecord::Migration
  def change
    create_table :blocked_comments do |t|
      t.integer :id_comment
      t.text :comment
      t.datetime :blocked_date
      t.text :reason
      t.string :user
      t.string :ip_user

      t.timestamps null: false
    end
  end
end
