class Design < ActiveRecord::Base
  belongs_to :category

  extend FriendlyId
  friendly_id :name, use: :slugged

  # CarrierWave
  mount_uploader :image, DesignUploader
end