class Meme < ApplicationRecord
  mount_uploader :picture_url, ImageUploader
end
