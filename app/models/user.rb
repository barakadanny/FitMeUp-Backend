class User < ApplicationRecord
  has_one :roles, dependent: :destroy
  has_one :trainers, dependent: :destroy
  has_many :appointments, dependent: :destroy

  validates :full_name, :date_of_birth, :address, :email_address, presence: true
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :phone_number, presence: true,
                           length: { minimum: 10, maximum: 16 }
end
