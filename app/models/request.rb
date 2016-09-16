class Request < ActiveRecord::Base
  belongs_to :business
  belongs_to :request

  validates :interval, :presence => true
  validates :date, :presence => true
end
