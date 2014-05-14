class CreateStorytimePosts < ActiveRecord::Migration
  def change
    create_table :storytime_posts do |t|
      t.references :user, index: true
      t.string :title
      t.text :content
      t.text :excerpt
      t.boolean :published
      t.string :post_type

      t.timestamps
    end
  end
end