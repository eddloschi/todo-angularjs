require 'spec_helper'

describe ItemsController do
  describe "show" do
    before do
      @item = FactoryGirl.create :item
      visit '/items'
    end

    it "should return all items" do
      items = JSON.parse page.source
      items[0]['_id'].should == @item._id.to_s
    end
  end

  describe "create" do
    before do
      @description = 'Learn BDD'
      page.driver.post '/items', {item: {description: @description, done: false}}
    end
    it "should create a todo item" do
      item = JSON.parse page.source
      item['description'].should == @description
    end
  end
end
