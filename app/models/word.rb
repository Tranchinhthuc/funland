class Word < ApplicationRecord
  has_many :students, through: :student_words, class_name: "User"
  has_many :student_words, foreign_key: "student_id"
  has_many :word_lessons
  has_many :lessons, through: :word_lessons, dependent: :destroy
end
