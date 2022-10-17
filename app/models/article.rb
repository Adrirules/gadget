class Article < ApplicationRecord
  has_one_attached :photo
  has_one_attached :cover
  belongs_to :user

end
