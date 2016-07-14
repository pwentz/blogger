class AddColumnToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :created_at, :timestamps
    add_column :articles, :updated_at, :timestamps
    add_column :comments, :created_at, :timestamps
    add_column :comments, :updated_at, :timestamps
  end
end
