class Lesson < ApplicationRecord
  has_many :students, through: :student_lessons, dependent: :destroy, class_name: "User"
  has_many :student_lessons, foreign_key: "student_id"
  has_many :words, through: :word_lessons, dependent: :destroy
  has_many :word_lessons
end
