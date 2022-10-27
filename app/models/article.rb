class Article < ApplicationRecord
  has_one_attached :cover
  has_many_attached :photos
  belongs_to :user
  has_rich_text :ontent
  acts_as_taggable_on :tags

end
