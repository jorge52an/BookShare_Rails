class User < ApplicationRecord
	has_secure_password

	has_one :photo
	has_many :products
	has_many :interests, through: :user_interest

	validates :name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true, format: Devise::email_regexp

	def self.load_user_by_email( email )
		user = self.find_by_email( email )

		return user
	end

	def self.load_user_by_id( id )
		user = self.find_by_id( id )

		return user
	end
end