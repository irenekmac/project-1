class User < ApplicationRecord
  has_secure_password

  enum user_type: [:patient, :technician, :admin]

  enum state: [:nsw, :vic, :qld]

  validates :email, presence: true, uniqueness: true

  validates :name, presence: true
end
