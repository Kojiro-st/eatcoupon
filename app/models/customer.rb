class Customer < ApplicationRecord
  has_many :customer_users
  has_many :users, through: :customer_users
  has_many :messages
  validates :name, presence: true, uniqueness: true
end
