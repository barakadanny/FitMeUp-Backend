class Trainer < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :trainer_specialities, dependent: :destroy
  has_many :specialities, through: :trainer_specialities
end
