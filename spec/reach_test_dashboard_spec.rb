require "spec_helper"

describe "Web UI" do
  before { 
    @browser.goto 'https://app.saucelabs.com/login'
    @browser.text_field(id: 'username').set ENV['HEALTHBAR_TEST_USER']
    @browser.text_field(id: 'password').set ENV['HEALTHBAR_USER_PW']
    @browser.button(type: 'submit').click
    sleep 6
}

    it "can reach Automated Tests" do
        expect(@browser.link(text: 'Automated tests')).to exist
        @browser.link(text: 'Automated tests').click
    end

    it "can reach Live Tests" do
        expect(@browser.link(text: 'Live Tests')).to exist
        @browser.link(text: 'Live Tests').click
    end

    it "can reach Automated Builds" do
        expect(@browser.link(text: 'Automated Builds')).to exist
        @browser.link(text: 'Automated Builds').click
    end
end