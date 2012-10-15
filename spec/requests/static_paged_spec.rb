require 'spec_helper'

describe "Static Paged" do
  describe "Home page" do
   
    it "should have the content 'Women never give up'" do
    	visit '/static_paged/home'
    	page.should have_content('Women never give up')
    end
  end
end
