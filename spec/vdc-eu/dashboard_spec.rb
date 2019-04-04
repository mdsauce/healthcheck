require "spec_helper"

describe "EU VDC Web UI" do
    before { 
        @browser.goto 'https://app.eu-central-1.saucelabs.com/login'
        @browser.text_field(id: 'username').set ENV['HEALTHCHECK_TEST_USER']
        @browser.text_field(id: 'password').set ENV['HEALTHCHECK_USER_PW']
        @browser.button(type: 'submit').click
    }

    it "can reach Automated Tests" do
        @browser.link(text: 'Automated Tests').click
        expect(@browser.div(text: 'Showing:')).to exist
    end

    it "can reach Automated Builds" do
        @browser.link(text: 'Automated Builds').click
        expect(@browser.div(text: 'Showing:')).to exist
    end

    it "can reach Live Tests" do
        @browser.link(text: 'Live Tests').click
    end
end