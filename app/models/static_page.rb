class StaticPage < ActiveRecord::Base
  attr_accessible :content, :status, :title
end
