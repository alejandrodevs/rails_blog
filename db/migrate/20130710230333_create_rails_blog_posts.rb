class CreateRailsBlogPosts < ActiveRecord::Migration
  def change
    create_table :rails_blog_posts do |t|
      t.string :title, :limit => 100
      t.string :permalink, :limit => 100
      t.text :body
      t.integer :author_id
      t.string :state
      t.datetime :published_at

      t.timestamps
    end
  end
end
