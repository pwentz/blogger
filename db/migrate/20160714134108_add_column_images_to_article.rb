class AddColumnImagesToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :image_file_name, :string
    add_column :articles, :image_content_size, :string
    add_column :articles, :image_file_size, :integer
    add_column :articles, :image_update_at, :datetime
  end
end
