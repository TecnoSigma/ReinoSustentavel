class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :id_post
      t.string :ip

      t.timestamps null: false
    end
  end
end
