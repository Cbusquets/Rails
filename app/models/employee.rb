class Employee < ApplicationRecord
  belongs_to :client
  validates :first_name, :last_name, :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})\z/i }

end

