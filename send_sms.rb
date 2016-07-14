require 'twilio-ruby'
require './keys_and_number.rb'
include MyKeys
include MyNumbers

# put your own credentials here
account_sid = MyKeys.account_sid
auth_token = MyKeys.auth_token

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token 

@client.account.messages.create(
  from: MyNumbers.from_number,
  to: MyNumbers.test_number,
  body: 'Robot invasion! Reply back with any sightings.'
)