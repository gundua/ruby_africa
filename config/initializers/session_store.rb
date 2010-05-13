# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_ruby_africa_session',
  :secret => 'ee533f88e9158866277d3a87aeb55cc9d9258dd4eb358de3d88ff0c732959b83af1ad8cba5249e98f5ea2fc09abf0ce0c79ad4b6fb2f6c0a583a71ea43aa2dc7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
