class AddPictureIdToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :picture_id, :integer
  end
end
