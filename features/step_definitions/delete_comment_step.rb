@myPost
Given(/^there is a post with (\d+) comment$/) do |arg1|
  @myPost = Post.create(title: "Dummy Title", content: "Dummy Content")
  @myPost.comments.create(body: "my comment")
  @myPost.comments.create(email: "myEmail@email.com")
  @myPost.comments.create(commenter: "myName")
  @myPost.save
end
When(/^I am on the "(.*?)" page$/) do |postPage|
  visit(postPage)
  click_on "Show"
end
When(/^I click "(.*?)"$/) do |del|
  @delComment = first(:link, del)
  first(:link, del).click
  #click_on del
end

Then(/^the comment should be deleted$/) do
  @delComment.nil?
end
