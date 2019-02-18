class User < ApplicationRecord
  # mount_uploader :image, ImageUploader
  mount_uploader :profile_image, ImageUploader
  validates :name,  presence: true, length: { maximum: 30 }
  validates :mail, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { mail.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
