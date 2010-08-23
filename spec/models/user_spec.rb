require 'spec_helper'

describe User do
  before do
    User.destroy_all
  end

  it "should require an email address" do
    user = User.new
    user.save.should be_false
    user.should_not be_valid
    user.email_address = "testme@bla.com"
    user.save.should be_true
  end

  it "should be able to sign up as a new RubyAfrica member" do
    sign_up_details = {:email_address => "johnsmith@theagency.com"}
    user = User.sign_up sign_up_details
    user.should_not be_nil
    user.email_address.should be_equal(sign_up_details[:email_address])
  end

  it "should not allow sign up from exisiting email address" do
    sign_up_details = {:email_address => "johnsmith@theagency.com"}
    user = User.sign_up sign_up_details
    user.should be_valid
    user.email_address.should be_equal(sign_up_details[:email_address])

    user = User.sign_up sign_up_details
    user.should_not be_valid
    
  end
end
