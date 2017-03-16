class GeneralDescription < ApplicationRecord
  validates :content, presence: true

  enum status: {
    active: 1,
    inactive: 2
  }

  enum description_for: {
    teacher: 1,
    student: 2,
    about: 3,
    contact: 4
  }
end
