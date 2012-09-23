class MenuItem < ActiveRecord::Base

	scope :ordering, order('position ASC')

  belongs_to :static_page
  attr_accessible :position, :status, :title, :static_page_id
end