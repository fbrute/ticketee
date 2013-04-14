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

And /^I should be on the project page for "(.*?)"$/ do |project_name|
  id = Project.find_by_name(project_name).id
  visit("/projects/#{id}")
end
