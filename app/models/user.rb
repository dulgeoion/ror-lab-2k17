class User < ApplicationRecord

	validates :firstname, :lastname, :email, :country, :city, :street, :house, :password, presence: true
	validates :email, uniqueness: true

end
