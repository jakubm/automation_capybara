Given("I am on the YouTube home page") do
  visit 'http://www.youtube.com'
end

When("I search for {string}") do |search_term|
  fill_in 'search_query', with: search_term
  click_on 'Search'
end

Then("videos of large rodents are returned") do
  expect(page).to have_content 'Dog and Capybara'
  page.save_screenshot 'screenshot.png'
end

Given("I am on the JakubM.com home page") do
  visit 'http://www.jakubm.com'
  # page.save_screenshot 'screenshot.png'
end

When("I type {string} for flight number") do |flight_number|
  fill_in 'Flight Number', with: flight_number
  # page.save_screenshot 'screenshot2.png'
end

Then("flights of {string} are visible") do |airline|
    expect(page).to have_content airline
end

Then("flights of {string} are not visible") do |airline|
    expect(page).not_to have_content airline
end
