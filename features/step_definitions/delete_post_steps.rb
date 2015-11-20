Given(/^there is a post titled with "(.*?)" and content with "(.*?)"$/) do |title, content|
  	@title = title
	@post = Post.create({ :title => title, :content => content, :post_time => Time.now })
end

When(/^I select the post$/) do
  	visit(post_url @post)
end

When(/^I click "(.*?)"$/) do |link|
  click_on link
end

Then(/^the post should be deleted$/) do
  page.should have_no_content(@title)
end


