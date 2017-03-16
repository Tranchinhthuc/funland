class SlidePicture < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  belongs_to :slide
end
