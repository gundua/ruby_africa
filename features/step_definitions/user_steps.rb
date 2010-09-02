Then /^I should be a RubyAfrica member$/ do
  User.first.not_nil?.should be_true
end

