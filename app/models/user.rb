class User < ApplicationRecord
  has_one :roles, destroy: :cascade
  has_one :trainers, destroy: :cascade
  has_many :appointments, destroy: :cascade
end
