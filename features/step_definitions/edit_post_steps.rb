Given(/^there is a post with title "(.*?)" and content "(.*?)"$/) do |title, content|
	@post = Post.create!({ :title => title, :content => content, :post_time=> Time.now })
end

When(/^I edit this post$/) do
	visit(edit_post_url @post)
end

When(/^I update title to "(.*?)" and content to "(.*?)"$/) do |title1, content1|
	fill_in "Title", :with => title1 		#title
	fill_in "Content", :with => content1	#content
	click_on "Edit Post"
	@new_title = title1
end

Then(/^I can see it has been updated$/) do
  page.should have_content(@new_title)
end





