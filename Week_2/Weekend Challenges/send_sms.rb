require("bundler")
Bundler.require()
require 'twilio-ruby'
account_sid = 'ACf7c522c5bb369d5c1406ccd50abc93ce'
auth_token = '3f5533e811f538b4975fb088c205a902'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+12292169219' # Your Twilio number
to = '+447498470171' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hi, your order was placed succesfull at #{Time.now}!"
)