class Logo < ActiveRecord::Base
  attr_accessible :carrousel, :description, :home, :image, :slider, :title
  mount_uploader :image, ImageUploader

  validates_presence_of :title, :image
end
