class Role < ApplicationRecord
  has_many :user_roles, inverse_of: :role, dependent: :destroy
  has_many :users, through: :user_roles
end
