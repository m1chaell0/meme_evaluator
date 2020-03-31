class AddPictureToMeme < ActiveRecord::Migration[6.0]
  def change
    add_column :memes, :picture_url, :string
  end
end
