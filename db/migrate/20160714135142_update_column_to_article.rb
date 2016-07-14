class UpdateColumnToArticle < ActiveRecord::Migration
  def change
    rename_column :articles, :image_content_size, :image_content_type
  end
end
