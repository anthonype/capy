Given /^I am a new user$/ do
 # pending # express the regexp above with the code you wish you had
end

Given /^I am on facebook homepage$/ do
   visit "http://facebook.com"
end

Given /^I fill in the following sign up information for the Sign Up pane:$/ do |table|
  t = Time.now.strftime("%Y%j%H%M%S")
  email = table.hashes.first["Email"].sub('@', "-#{t}@") if table.hashes.first["Existing-User"].nil?
  fill_in 'First Name:', :with => table.hashes.first["First-Name"]
  fill_in 'Last Name:', :with => table.hashes.first["Last-Name"]
  fill_in 'Your Email:', :with => email.nil? ? table.hashes.first["Email"] : email
  fill_in 'Re-enter Email:', :with => email.nil? ? table.hashes.first["Re-enter-Email"] : email
  fill_in 'New Password:', :with => table.hashes.first["Password"]
end

Given /^I select "(.*?)" from "(.*?)"$/ do |arg1, arg2|
  select(arg1, :from => arg2)
end

When /^I click "(.*?)" in the Sign Up pane$/ do |arg1|
  element = find_by_id('reg_form_box')
  element.click_button arg1
  end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content(arg1)
end

Given /^I am an existing user/ do
  #pending # express the regexp above with the code you wish you had
end

Given /^I fill out the sign up form$/ do
  steps %Q{
  Given I fill in the following sign up information for the Sign Up pane:
      | First-Name | Last-Name |  Email           | Re-enter-Email  | Password | Existing-User |
      | fDude      | lDude     |  dude@google.com | dude@google.com | Badf00d  | yes          |
  Given I select "Male" from "sex"
  Given I select "Jan" from "birthday_month"
  Given I select "1" from "birthday_day"
  Given I select "1980" from "birthday_year"
  }
end