class Word < ApplicationRecord
  has_many :students, through: :student_words, class_name: "User"
  has_many :student_words, foreign_key: "student_id"
  has_many :word_lessons
  has_many :lessons, through: :word_lessons, dependent: :destroy

  mount_uploader :audio, AudioUploader
  mount_uploader :picture, PhotoUploader

  validates :audio, presence: true
  validates :picture, presence: true
end
