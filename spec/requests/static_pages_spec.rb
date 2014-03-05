require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'CS 232 Rails Development | Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("CS 232 Rails Development | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'CS 232 Rails Development | Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("CS 232 Rails Development | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'CS 232 Rails Development | About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("CS 232 Rails Development | About Us")
    end
  end

  describe "Contact page" do

    #1 The page title should be: CS 232 Rails Development | Contact
    it "should have the title 'CS 232 Rails Development | Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("CS 232 Rails Development | Contact")
    end

    #2 The page should contain the words 'CS 232 Contact'.
    it "should have the content 'CS 232 Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('CS 232 Contact')
    end

    #3 The page should contain an <h1 class="page-title"> element.
    it "should have the element '<h1 class=\"page-title\">'" do
      visit '/static_pages/contact'
      expect(page).to have_css('h1.page-title')
    end

    #4 The page should contain a Definition List with a <dl>.
    it "should have the element '<dl>'" do
      visit '/static_pages/contact'
      expect(page).to have_css('dl')
    end

    #5 The page should contain an HTML element <dt> element.
    it "should have the element '<dt>'" do
      visit '/static_pages/contact'
      expect(page).to have_css('dt')
    end

    #6 The page should contain an HTML element <dd> element.
    it "should have the element '<dd>'" do
      visit '/static_pages/contact'
      expect(page).to have_css('dd')
    end

    #7 The page should contain an HTML element named <section class="main">
    it "should have the element '<section class=\"main\">'" do
      visit '/static_pages/contact'
      expect(page).to have_css('section.main')
    end

    #8 The CSS should contain an h1.page-title selector.
    it "should have the selector 'h1.page-title'" do
      visit '/static_pages/contact'
      expect(page).to have_selector('h1.page-title')
    end

    #9 The CSS should contain a .main selector.
    it "should have the class selector '.main'" do
      visit '/static_pages/contact'
      expect(page).to have_selector('.main')
    end

  end

end
