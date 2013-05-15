require 'spec_helper'

describe Item do
  let(:item) { FactoryGirl.build_stubbed :item}

  it "should have a description" do
    item.description = ""
    item.should_not be_valid
  end
end
