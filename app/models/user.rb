class User
  include Mongoid::Document
  field :username, :type => String
  field :first_name, :type => String
  field :last_name, :type => String
  field :dob, :type => Date
  field :twitter, :type => String
  devise  :database_authenticatable, :lockable, :rememberable, :registerable, :trackable, :recoverable
end
