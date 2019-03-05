require "spec_helper"

describe "US VDC Authentication" do
  before { @browser.goto 'https://app.saucelabs.com/login'}

  it "lets user log in" do
    @browser.text_field(id: 'username').set ENV['HEALTHCHECK_TEST_USER']
    @browser.text_field(id: 'password').set ENV['HEALTHCHECK_USER_PW']
    @browser.button(type: 'submit').click
    @browser.div(visible_text: 'concurrent sessions').click
  end
end
