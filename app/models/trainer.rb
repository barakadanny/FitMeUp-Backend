class Trainer < ApplicationRecord
  belongs_to :user
  has_many :appointments, destroy: :cascade
  has_many :trainer_specialities, destroy: :cascade
  has_many :specialities, through: :trainer_specialities
end
