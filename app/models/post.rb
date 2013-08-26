class Post < ActiveRecord::Base
  attr_accessible :content, :photo, :title, :tag_list
  mount_uploader :photo, PhotoUploader
  acts_as_taggable

  validates_presence_of :title, :photo, :content
end
