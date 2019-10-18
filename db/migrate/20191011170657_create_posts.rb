class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :author
      t.text :body
      t.string :title
      t.integer :page_views_count

      t.timestamps
    end
  end
end
