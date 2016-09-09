class Business < ActiveRecord::Base
  has_many :requests
  validates :biz_name, :presence => true
  validates :biz_type, :presence => true
  validates :biz_address, :presence => true
  validates :biz_phone, :presence => true
  validates :biz_contact, :presence => true
  validates :biz_number, :presence => true
end
