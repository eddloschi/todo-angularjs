When(/^I click on the toggle button of the "(.*?)" item$/) do |description|
  within '#todo-list' do
    page.find(:xpath, "//span[.='#{description}']/preceding::input").click
  end
  @description = description
end

Then(/^it should be done$/) do
  item = page.find('span', text: @description)
  item['class'].should include 'done-true'
  item['class'].should_not include 'done-false'
end
