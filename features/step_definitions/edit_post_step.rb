require 'watir-webdriver'
#browser = Watir::Browser.new
Given(/^a post exists with title: "(.*?)", content: "(.*?)"$/) do |arg1, arg2|
  visit("/posts")
end
When(/^I am on the post's page$/) do
  browser.goto "http://localhost:3000/posts/3/edit"
end
When(/^I update title to "(.*?)"$/) do |t|
  browser.text_field(:name,"post[title]").set(t)
end

When(/^I update content to "(.*?)"$/) do |c|
  browser.text_field(:name,"post[content]").set(c)
end
Then(/^I can see it has been updated$/) do
  browser.button(:name,"commit").click
  browser.close
end