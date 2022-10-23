class Article < ApplicationRecord
  has_one_attached :photo
  has_one_attached :cover
  belongs_to :user
  has_rich_text :ontent
  acts_as_taggable_on :tags

end
