class RenameImageToAlt < ActiveRecord::Migration[7.0]
  def change
    rename_column :articles, :image, :alt
  end
end
