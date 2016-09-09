class Request < ActiveRecord::Base
  belongs_to :business

  validates :interval, :presence => true
  validates :date, :presence => true
end
