class User < ApplicationRecord
  # mount_uploader :image, ImageUploader
  mount_uploader :profile_image, ImageUploader
  validates :name,  presence: true, length: { maximum: 30 }
  validates :mail, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { mail.downcase! }

  # require 'io/console'
  # password = STDIN.noecho(&:gets)

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :favorites, dependent: :destroy
  has_many :pictures


end
