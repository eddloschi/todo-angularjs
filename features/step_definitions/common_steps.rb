Given(/^I am on the home page$/) do
  visit '/'
end

Given(/^The following items exist:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
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
