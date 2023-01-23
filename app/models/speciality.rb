class Speciality < ApplicationRecord
  has_many :trainer_specialities, dependent: :destroy
  has_many :trainers, through: :trainer_specialities

  validates :name, presence: true
end
