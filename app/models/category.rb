class Category < ActiveRecord::Base
	has_many :designs
	validates_presence_of :name, :layout

  extend FriendlyId
  friendly_id :name, use: :slugged
end