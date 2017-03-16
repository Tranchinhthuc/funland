class Course < ApplicationRecord
  enum status: {
    inactive: 2,
    active: 1
  }
  enum course_type: {
    kindergarten: 1,
    primary: 2,
    other: 3
  }
end
