class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :trainer

  validates :appointment_date, presence: true
end
