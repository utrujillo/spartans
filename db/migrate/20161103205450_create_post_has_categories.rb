class CreatePostHasCategories < ActiveRecord::Migration
  def change
    create_table :post_has_categories do |t|
      t.references :post, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
