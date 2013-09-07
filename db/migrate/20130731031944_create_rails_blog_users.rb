class CreateRailsBlogUsers < ActiveRecord::Migration
  def change
    create_table :rails_blog_users do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
