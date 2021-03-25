class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
       t.string :user_name
       t.timestamp :timestamp
       t.text :content
    end
  end
end
