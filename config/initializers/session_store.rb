# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cucumberwithflex_session',
  :secret      => 'e5d854b622aa93afd3b74098c40beb8d8f8bb8dbb685eafaf098ee900733295afbc29e9f1dae42aa483211fd7bd81859314830e0ed3072d45869dc7a79dcaf84'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
