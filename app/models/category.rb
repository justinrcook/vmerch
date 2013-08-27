class Category < ActiveRecord::Base
	has_many :designs
	validates_presence_of :name

  extend FriendlyId
  friendly_id :name, use: :slugged
end