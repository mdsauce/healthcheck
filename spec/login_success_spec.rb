require "spec_helper"

describe "Authentication" do
  before { @browser.goto 'https://app.saucelabs.com/login'}

  it "lets user log in" do
    @browser.text_field(id: 'username').set ENV['HEALTHCHECK_TEST_USER']
    @browser.text_field(id: 'password').set ENV['HEALTHCHECK_USER_PW']
    @browser.button(type: 'submit').click
    sleep 6
    expect(@browser.link(text: 'Automated tests')).to exist
  end
end
