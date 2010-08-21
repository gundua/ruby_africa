require 'spec_helper'

describe User do
  it "should require an email address" do
    user = User.new
    user.should validate_presence_of :email_address
  end
end
