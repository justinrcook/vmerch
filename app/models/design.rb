class Design < ActiveRecord::Base
  belongs_to :category

  extend FriendlyId
  friendly_id :name, use: :slugged

  # CarrierWave
  mount_uploader :image, DesignUploader

  def should_generate_new_friendly_id?
    name_changed?
  end
end