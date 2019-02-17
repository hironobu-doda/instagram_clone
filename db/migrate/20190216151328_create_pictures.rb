class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.text :profile_image
      t.text :profile_content
      t.text :image
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
