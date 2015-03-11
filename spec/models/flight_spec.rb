require 'spec_helper'

describe Flight do
  it "has a valid factory" do
    expect(FactoryGirl.create(:flight)).to be_valid
  end

  it "is invalid without from_airport_id" do
    expect(FactoryGirl.build(:flight, from_airport_id: nil)).to_not be_valid
  end
  
  it "is invalid without to_airport_id" do
    expect(FactoryGirl.build(:flight, to_airport_id: nil)).to_not be_valid
  end
end