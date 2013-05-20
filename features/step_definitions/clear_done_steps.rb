When(/^I click on the "(.*?)" button$/) do |button|
  click_on button
end

Then(/^I should not see the following items:$/) do |table|
  within '#todo-list' do
    table.hashes.each do |item|
      page.should_not have_content item['description']
    end
  end
end
