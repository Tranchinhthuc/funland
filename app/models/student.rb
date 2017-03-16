class Student < ApplicationRecord
  mount_uploader :avatar, PhotoUploader
  validates :avatar, presence: true
  validates :fullname, presence: true

  enum status: {
    inactive: 2,
    active: 1
  }
end
