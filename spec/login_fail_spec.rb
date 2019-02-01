require "spec_helper"

describe "Authentication" do
  before { @browser.goto 'https://app.saucelabs.com/login'}

  it "fails w/ bad password" do
    @browser.text_field(id: 'username').set 'ahgaks'
    @browser.text_field(id: 'password').set 'junk password'
    @browser.button(type: 'submit').click

    expect(@browser.div(class: 'alert')).to exist
  end
end
