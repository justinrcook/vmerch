class Category < ActiveRecord::Base
	has_many :designs
	validates_presence_of :name, :layout

  extend FriendlyId
  friendly_id :name, use: :slugged

  def single_column?; self.layout.eql?("single_column"); end
  def two_column?; self.layout.eql?("two_column"); end

  def should_generate_new_friendly_id?
    name_changed?
  end
end