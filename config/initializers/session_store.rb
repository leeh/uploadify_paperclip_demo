# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_uploadtest_session',
  :secret      => '28cf1efb332898e612848d49340200269ee879a6c5ea9378289e9d8ba395b197dcde8dd38fdd8cbfadcae865f64d9a9fedfc6a065ee758fc931c94e37ac04f7a'
}


#ActionController::Base.session_store = :active_record_store
ActionController::Dispatcher.middleware.insert_before(ActionController::Session::CookieStore, FlashSessionCookieMiddleware, ActionController::Base.session_options[:key])
#ActionController::Base.session_store, 