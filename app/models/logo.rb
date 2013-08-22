class Logo < ActiveRecord::Base
  attr_accessible :carrousel, :description, :home, :image, :slider, :title
  mount_uploader :image, ImageUploader
end
