require 'rails_helper'

describe Request do
  it { should validate_presence_of :interval }
  it { should validate_presence_of :date }
  it { should belong_to :business}
end
