require 'sinatra'
require 'twilio-ruby'

post '/sms' do
  response = params['Body']
  puts "Message: #{response}!"

  twiml = Twilio::TwiML::Response.new do |r|
    r.Message "#{response} has been added to our list of robot sightings! Head for the hills!"
  end
  twiml.text
end