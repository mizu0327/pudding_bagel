class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :shop_name
      t.text :shop_address
      t.text :description
      t.string :image
      t.integer :user_id
      t.timestamps
    end
  end
end
