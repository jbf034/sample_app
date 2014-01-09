#encoding:utf-8
require 'spec_helper'

describe "Controller:StaticPages--" do
  describe "action:Home pages--" do
    it "首页中要有一个sample app字段" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
	  page.should have_selector('h1',:text=>"Sample App")
	end
	  it "should have the right title" do
	  visit '/static_pages/home'
	  page.should have_selector('title',:text=>"Ruby on Rails Tutorial Sample App | Home")
	end
 end
  
describe "action:Help pages--" do
	  it "帮助页中也要一个help" do
		  visit '/static_pages/help'
		  page.should have_selector('h1',:text=>'Help')
	  end
	  it "should have the right title" do
	  visit '/static_pages/help'
	  page.should have_selector('title',:text=>"Ruby on Rails Tutorial Sample App | Help")
	end
  end

describe "action:About pages--"do
	  it "关于而中要有一个about us"do
		  visit '/static_pages/about'
		  page.should have_selector('h1',:text=>'About Us')
	  end
		 it "should have the right title" do
	  visit '/static_pages/about'
	  page.should have_selector('title',:text=>"Ruby on Rails Tutorial Sample App | About")
	end
  end
  
end
