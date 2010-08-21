class User
  include Mongoid::Document
  
  field :email_address
  
  validates_presence_of :email_address
  
end
