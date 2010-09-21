class User
  include Mongoid::Document

  devise  :database_authenticatable, :lockable, :rememberable, :registerable, :trackable, :recoverable
end
