require "spec_helper"

describe "EU VDC Authentication" do
  before { @browser.goto 'https://app.eu-central-1.saucelabs.com/login'}

  it "fails w/ bad password" do
    @browser.text_field(id: 'username').set 'ahgaks'
    @browser.text_field(id: 'password').set 'junk password'
    @browser.button(type: 'submit').click

    sleep 1

    expect(@browser.div(class: 'alert')).to exist
  end
end
