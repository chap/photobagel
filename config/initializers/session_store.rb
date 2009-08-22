# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_photobagel_session',
  :secret      => 'ba07a8588010644fc28cf3d5cb3df0a2895e17df53884534d96193988b21dcddab411b66e2c0fda0fdd6d39966970c9be52c7e7b68e6a2f9d8de842c9a225804'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
