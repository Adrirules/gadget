class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :chapo
      t.string :image
      t.text :content
      t.string :category
      t.string :tag
      t.string :author

      t.timestamps
    end
  end
end
