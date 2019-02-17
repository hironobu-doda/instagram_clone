class RemoveColumnsFromPictures < ActiveRecord::Migration[5.1]
  def change
    remove_column :pictures, :profile_image, :text
    remove_column :pictures, :profile_content, :text
  end
end
