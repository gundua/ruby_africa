class User
  include Mongoid::Document
  
  field :email_address
  
  validates_presence_of :email_address
  validates_uniqueness_of :email_address

  def self.sign_up options
    email_address = options[:email_address]
    new_user = User.new :email_address => email_address
    new_user.save
    new_user
  end
  
end
