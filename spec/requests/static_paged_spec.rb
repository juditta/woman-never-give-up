require 'spec_helper'

describe "Static Paged" do

  let(:base_title){"Ruby on Rails Tutorial Sample App"}
  
  describe "Home page" do
   
    it "should have the content 'title'" do
    	visit '/static_paged/home'
    		  page.should have_selector('title',
                    :text => "#{base_title}")
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
      	:text => "#{base_title} | Help")
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
		page.should have_selector('title', :text => "#{base_title} | About Us")
 end
end

describe "Contact page" do
it "should have the title Contact" do
	visit '/static_paged/contact'
	page.should have_selector('title', :text => "#{base_title} | Contact")
end
it "should have the contact" do
	visit '/static_paged/contact'
	page.should have_selector('h1', :text => "Contact")
	end
	end

end