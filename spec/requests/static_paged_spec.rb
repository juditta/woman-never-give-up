require 'spec_helper'

describe "Static Paged" do
  describe "Home page" do
   
    it "should have the content 'title'" do
    	visit '/static_paged/home'
    		  page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | Home")
    end
    it "should have h1 'Women never give up'" do
    	visit '/static_paged/home'
    	page.should have_selector('h1', :text => "Women never give up")
    end
  end

describe "Help page" do

    it "should have the  'title' Help" do
      visit '/static_paged/help'
      page.should have_selector('title',
      	:text => "Ruby on Rails Tutorial Sample App | Help")
    end
    it "should have the h1 Help" do
    	visit '/static_paged/help'
    	page.should have_selector('h1',
    		:text => "Help")
	end	
  end

 describe "About page" do
	it "should have the content 'About'" do
	visit '/static_paged/about'
	page.should have_content('About')
	end
	it "should have the title" do
		visit '/static_paged/about'
		page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
 end
end

end