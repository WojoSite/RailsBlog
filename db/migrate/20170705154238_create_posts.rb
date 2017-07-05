# user_id, comment_id, title, text

class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
