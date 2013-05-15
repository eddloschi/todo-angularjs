When(/^I add the item "(.*?)"$/) do |description|
  within '#new-item' do
    fill_in 'description', with: description
    click_on 'Add'
  end
  @description = description
end
