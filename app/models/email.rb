class Email < ActiveRecord::Base
  attr_accessible :address
  validates_presence_of :address

  def self.search(search, page)
    paginate :per_page => 20, :page => page, :conditions => ['address like ?', "%#{search}%"], :order => 'address'
  end
end
