class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
  has_one :roles, dependent: :destroy, class_name: 'Role'
  has_one :trainers, dependent: :destroy, class_name: 'Trainer'
  has_many :appointments, dependent: :destroy, class_name: 'Appointment'

  validates :full_name, :date_of_birth, :address, :email_address, presence: true
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :phone_number, presence: true,
                           length: { minimum: 10, maximum: 16 }
end
