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

  describe "update" do
    before do
      @item = FactoryGirl.create :item
      page.driver.put "/items/#{@item._id}", {"_id"=>"#{@item._id}","c_at"=>"#{@item.c_at}","description"=>"#{@item.description}","done"=>"#{!@item.done}","u_at"=>"#{@item.u_at}"}
    end

    it "should update the item" do
      item = JSON.parse page.source
      item['description'].should == @item.description
      item['done'].should == !@item.done
    end
  end

  describe "destroy" do
    before do
      @item = FactoryGirl.create :item
      page.driver.delete "/items/#{@item._id}", {"_id"=>"#{@item._id}","c_at"=>"#{@item.c_at}","description"=>"#{@item.description}","done"=>"#{!@item.done}","u_at"=>"#{@item.u_at}"}
    end
    it "should destroy the item" do
      Item.count.should == 0
    end
  end
end
