require 'spec_helper'

describe User do
  it "should require an email address" do
    user = User.new
    user.save.should be_false
    user.should_not be_valid
    user.email_address = "testme@bla.com"
    user.save.should be_true
  end
end
