
@myPost
Given(/^there is a post titled with "(.*?)" and content with "(.*?)"$/) do |myTitle, myContent|

  @myPost = Post.create(title: myTitle, content: myContent)

end

Given(/^I am on the post page$/) do
  visit("/posts")
  click_on "Show"

end

When(/^I add a "(.*?)" with the following information$/) do |myContent|
  @myPost.comments.create(body: myContent)
end

When(/^my name is "(.*?)"$/) do |name|
  @myPost.comments.create(commenter: name)
end

When(/^my email is "(.*?)"$/) do |myEmail|
  @myPost.comments.create(email: myEmail)
end

Then(/^I can see the comment has been added onto the post$/) do
  #page.should have_content(@myPost)
end
