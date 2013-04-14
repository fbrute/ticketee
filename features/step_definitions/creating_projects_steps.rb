Given /^I am on the homepage$/ do
  visit('/')
end

When /^I follow "(.*?)"$/ do |link|
  click_link(link)
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |name, value|
  fill_in( name, {:with => value})
end

When /^I press "(.*?)"$/ do |button|
  click_button(button)
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content arg1
end

