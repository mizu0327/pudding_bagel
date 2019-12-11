class CreateRecommends < ActiveRecord::Migration[5.2]
  def change
    create_table :recommends do |t|
      t.integer :user_id
      t.integer :recommend_level
      t.text :content
      t.timestamps
    end
  end
end
