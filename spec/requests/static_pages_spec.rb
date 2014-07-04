require 'spec_helper'

describe "StaticPages" do
  describe "Home Pages" do
    it "should have the content 'App'" do
      visit root_path
      expect(page).to have_content('App')
    end
    it "should have the right title" do
      visit root_path
      expect(page).to have_title("Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      visit help_path
      expect(page).to have_title("Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
      visit about_path
      expect(page).to have_title("About")
    end
  end
  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Contact")
    end
  end

  describe "User pages" do 
    subject {page}
    
    describe "signup page" do
      before {visit signup_path}
      it {should have_content('Sign up')}
      it {should have_title(full_title('Sign up'))}
    end
  end
end
