class AddImageToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :alt1, :string
    add_column :articles, :photo2, :string
    add_column :articles, :alt2, :string
    add_column :articles, :photo3, :string
    add_column :articles, :alt3, :string
    add_column :articles, :photo4, :string
    add_column :articles, :alt4, :string
    add_column :articles, :photo5, :string
    add_column :articles, :alt5, :string
    add_column :articles, :photo6, :string
    add_column :articles, :alt6, :string
    add_column :articles, :photo7, :string
    add_column :articles, :alt7, :string
    add_column :articles, :photo8, :string
    add_column :articles, :alt8, :string
    add_column :articles, :photo9, :string
    add_column :articles, :alt9, :string
    add_column :articles, :photo10, :string
    add_column :articles, :alt10, :string
  end
end
