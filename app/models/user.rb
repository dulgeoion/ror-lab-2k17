class User < ApplicationRecord

	validates :firstname, :lastname, :email, :country, :city, :house, :password, presence: true
	validates :email, uniqueness: true

end
