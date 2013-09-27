Given(/^there are no published epsides$/) do
end

When(/^I go to the episodes list page$/) do
  visit episodes_url
end

Then(/^I should see that there are no episodes published$/) do
  page.should have_content("There are no published episodes.")
end

Episode = Struct.new :status, :title
Given(/^there are some episodes published$/) do
  @episodes = [
    Episode.new("published", "Episode 1"),
    Episode.new("published", "Episode 2")
  ]
end

Then(/^I should see the published episodes sorted by date$/) do
  @episodes.each do |episode|
    within(".#{episode.status}") do
      page.should have_css(".episode", text: episode.title)
    end
  end
end
