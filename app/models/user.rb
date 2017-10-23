class User < ApplicationRecord

	validates :firstname, :lastname, :email, :country, :city, :street, :house, :password, presence: true
	validates :email, uniqueness: true
	validates :house, numericality: {only_integer: true}
	validates :password, confirmation: true
	validates :password_confirmation, presence: true
	validates :password, length:{minimum:6, maximum:10}
	validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'Email is not correct!'} 

end
