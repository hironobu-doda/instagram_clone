class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.string :password_digest
      t.text :profile_image
      t.text :profile_content

      t.timestamps
    end
  end
end
