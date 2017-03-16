class Contact < ApplicationRecord
  enum status: {
    inactive: 2,
    active: 1
  }
end
