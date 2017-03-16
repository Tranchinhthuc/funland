class Student < ApplicationRecord
  mount_uploader :avatar, PhotoUploader

  enum status: {
    inactive: 2,
    active: 1
  }
end
