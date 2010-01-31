# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_train_database_session',
  :secret      => '85c8d68a3f6d90263cd9e38e0c7f304daf60be3c02a51d9208caa28cf74c6f101b44cf16264577629b5aff3a28b300e47ed02ee03feb4f45e237caff439d30c6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
