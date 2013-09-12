class Category < ActiveRecord::Base
	has_many :designs
	validates_presence_of :name, :layout

  extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    name_changed?
  end
end