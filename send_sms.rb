require 'twilio-ruby'

# put your own credentials here
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token 

@client.account.messages.create(
  from: '+14142693670',
  to: '+19293994263',
  body: 'Robot invasion! Reply back with any sightings.'
)