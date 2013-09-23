class Email < ActiveRecord::Base
	validates_presence_of :name, :email, :message
	validates_format_of :email, message: 'needs to be a valid email address',
		with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end