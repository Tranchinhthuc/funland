class Slide < ApplicationRecord
  has_many :slide_pictures, dependent: :destroy
  accepts_nested_attributes_for :slide_pictures

  enum status: {
    inactive: 2,
    active: 1
  }
end
