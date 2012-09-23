class New < ActiveRecord::Base

	scope :moderated, where(:status => true, :favourite => false).order('created_at DESC')
	scope :favourite, where(:status => true, :favourite => true)
	scope :recent, where(:status => true, :favourite => false).limit(6).order("created_at DESC")

  belongs_to :user
  accepts_nested_attributes_for :user
  attr_accessible :favourite, :content_full, :content_small, :status, :title, :user_id, :user
  validates :title, :length => {:minimum => 10}
  validates :content_full, :length => {:minimum => 10}
  validates :content_small, :length => {:minimum => 10}
end
