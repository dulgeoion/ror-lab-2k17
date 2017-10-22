class User < ApplicationRecord

	validates :firstname, :lastname, :email, :country, :adress, :password, presence: true
	validates :email, uniqueness: true

end
