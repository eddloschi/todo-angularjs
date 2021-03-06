Given(/^I am on the home page$/) do
  visit '/'
end

Given(/^The following items exist:$/) do |table|
  Item.create(table.hashes)
end

Then(/^it should not be done$/) do
  item = page.find('span', text: @description)
  item['class'].should include 'done-false'
  item['class'].should_not include 'done-true'
end

Then(/^I should see the following items:$/) do |table|
  within '#todo-list' do
    table.hashes.each do |item|
      page.should have_content item['description']
    end
  end
end

Then(/^I should see an empty todo list$/) do
  within '#todo-list' do
    page.should_not have_selector 'li'
  end
end

When(/^I reload the page$/) do
  visit current_path
end
