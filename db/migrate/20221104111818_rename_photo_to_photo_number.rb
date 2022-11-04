class RenamePhotoToPhotoNumber < ActiveRecord::Migration[7.0]
  def change
    rename_column :articles, :alt1, :altun
    rename_column :articles, :alt2, :altdeux
    rename_column :articles, :alt3, :alttrois
    rename_column :articles, :alt4, :altquatre
    rename_column :articles, :alt5, :altcinq
    rename_column :articles, :alt6, :altsix
    rename_column :articles, :alt7, :altsept
    rename_column :articles, :alt8, :althuit
    rename_column :articles, :alt9, :altneuf
    rename_column :articles, :alt10, :altdix
    rename_column :articles, :photo2, :photodeux
    rename_column :articles, :photo3, :phototrois
    rename_column :articles, :photo4, :photoquatre
    rename_column :articles, :photo5, :photocinq
    rename_column :articles, :photo6, :photosix
    rename_column :articles, :photo7, :photosept
    rename_column :articles, :photo8, :photohuit
    rename_column :articles, :photo9, :photoneuf
    rename_column :articles, :photo10, :photodix
  end
end
