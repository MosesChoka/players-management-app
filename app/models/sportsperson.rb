class Sportsperson < ApplicationRecord
  has_one_attached :image
  has_one  :user
  def image_as_thumbnail
    image.variant(resize_to_limit: [300, 300]).processed
  end
end
