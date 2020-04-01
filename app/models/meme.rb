class Meme < ApplicationRecord
  mount_uploader :picture_url, ImageUploader
  validates :title, presence: true, length: {minimum: 2}
  validates :picture_url, file_size: { less_than: 2.megabytes }
end
