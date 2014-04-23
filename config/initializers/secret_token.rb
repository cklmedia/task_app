# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
TaskApp::Application.config.secret_key_base = '97296b97ced9cadbc4298022477a9738e3a0babaa3f805ed8e4ea57198cd260e388c104caf5159e636cbd39c14fd3788123112445191023551d41bbc3271c6e6'
