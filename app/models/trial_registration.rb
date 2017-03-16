class TrialRegistration < ApplicationRecord
  belongs_to :branch
  belongs_to :course

  # validates :kid_name, presence: true
  # validates :phone, presence: true
end
