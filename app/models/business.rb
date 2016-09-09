class Business < ActiveRecord::Base
  validates :biz_name, :presence => true
  validates :biz_type, :presence => true
  validates :biz_address, :presence => true
  validates :biz_contact, :presence => true
  validates :biz_number, :presence => true

end