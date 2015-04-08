    #Given there are already 4 posts 
    Given /^4 posts exist$/ do 
    	visit("/posts")
    end
    When /^And I am on the blog homepage$/ do
    	#post page should be showing
    end 
    Then /^I can see list of (\d+) posted blogs$/ do |arg1|
    	#there should be 4 posts
    end