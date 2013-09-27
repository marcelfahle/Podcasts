Given(/^there are no published epsides$/) do
end

When(/^I go to the episodes list page$/) do
  visit episodes_url
end

Then(/^I should see that there are no episodes published$/) do
  page.should have_content("There are no published episodes.")
end

Given(/^there are some episodes published$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the published episodes sorted by date$/) do
  pending # express the regexp above with the code you wish you had
end
