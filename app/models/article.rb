class Article < ApplicationRecord
  has_one_attached :cover
  has_many_attached :photos
  belongs_to :user
  has_rich_text :ontent
  acts_as_taggable_on :tags , :categs

  extend FriendlyId
  friendly_id :title , use: [:slugged, :history]

  def should_generate_new_friendly_id?
    title_changed?
  end
end
