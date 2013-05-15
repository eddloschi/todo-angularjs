require 'spec_helper'

describe ItemsController do
  describe "index" do
    before do
      @item = FactoryGirl.create :item
      visit '/items'
    end

    it "should return all items" do
      items = JSON.parse page.source
      items[0]['_id'].should == @item._id.to_s
    end
  end
end
