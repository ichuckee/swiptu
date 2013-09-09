# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
	token_file = Rails.root.join ('.secret')
	if File.exit? (token_file)
		#Use the existing token.
		File.read(token_file) .chomp
	else
	#Generate a new token and store it in token_file.
	token = SecureRandom.hex(64)
	File.write(token_file, token)
	token
	end
end

Swiptu::Application.config.secret_key_base = '209199b618dca8cee7895222f08c2b93c4d102a9e7d2acc0e6aa932143e8752c724694623beac5eaf7a463f322cbf216301278ae3a911bdb0d6cc563eb01fb26'
