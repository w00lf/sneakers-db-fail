# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Services::Application.config.secret_key_base = 'f66798dfef437317c7f03b41a49cf7bcaafc6de77507da189258fe6e4ac6da9b235acb741db6a25e185e0a09a60aa5a0610c9209470b69be05410977dc068304'
