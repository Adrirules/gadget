class Article < ApplicationRecord
  has_one_attached :cover
  has_one_attached :photo
  has_one_attached :photodeux
  has_one_attached :phototrois
  has_one_attached :photoquatre
  has_one_attached :photocinq
  has_one_attached :photosix
  has_one_attached :photosept
  has_one_attached :photohuit
  has_one_attached :photoneuf
  has_one_attached :photodix


  belongs_to :user
  has_rich_text :ontent
  acts_as_taggable_on :tags , :categs


  extend FriendlyId
  friendly_id :title , use: [:slugged, :history]

  def should_generate_new_friendly_id?
    title_changed?
  end
end
