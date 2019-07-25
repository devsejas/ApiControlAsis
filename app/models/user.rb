class User < ApplicationRecord
	# has_many :users
	has_many :user_roles, inverse_of: :user, dependent: :destroy
	has_many :role, through: :user_roles
	has_many :aissistances
end
