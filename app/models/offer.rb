class Offer < ApplicationRecord
  validates_presence_of :title
  mount_uploader :image, ImageUploader
end
