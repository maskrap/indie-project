require 'rails_helper'

describe Business do
  it { should validate_presence_of :biz_name }
  it { should validate_presence_of :biz_type }
  it { should validate_presence_of :biz_address }
  it { should validate_presence_of :biz_phone }
  it { should validate_presence_of :biz_contact }
  it { should validate_presence_of :biz_number }
  it { should have_many :requests }
end
