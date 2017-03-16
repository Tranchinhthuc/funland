class Branch < ApplicationRecord
  has_many :trial_registrations
  validates :name, presence: true
  validates :address, presence: true

  def info
    "#{self.name}: #{self.address}"
  end
end
