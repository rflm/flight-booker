require 'spec_helper'

describe Airport do
  it "has a valid factory" do
    expect(FactoryGirl.create(:airport)).to be_valid
  end

  it "is invalid without a code" do
    expect(FactoryGirl.build(:airport, code: nil)).to_not be_valid
  end

  it "is invalid with a lowercased code" do
    expect(FactoryGirl.build(:airport, code: "sao")).to_not be_valid
  end
  
  it "is invalid with a too short code" do
    expect(FactoryGirl.build(:airport, code: "WW")).to_not be_valid
  end

  it "is invalid with a too long code" do
    expect(FactoryGirl.build(:airport, code: "WWWW")).to_not be_valid
  end
end