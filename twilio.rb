require 'twilio-ruby'

puts "Give me a number of times you want me to spam someone:"
number_of_times=gets.chomp.to_i

array_of_facts = File.readlines("./db/Quotes.txt")

accountSID = "AC24a2e456476dbd54dd7b1eaa135c87ad"
authToken = "[ADD YOUR OWN AUTH TOKEN]"

@client = Twilio::REST::Client.new accountSID, authToken

from ='[ADD YOUR TWILIO PHONE NUMBER]'
friends = {'[FRIENDS PHONE NUMBER]'=> "[FRIENDS NAME]"}

number_of_times.times do 
  if array_of_facts == array_of_facts
    quote_container = array_of_facts.sample 
  end
  message = @client.account.messages.create({
    :from => from,
    :to => friends.keys,
    :body => "#{quote_container}"})
  puts "Send message to #{friends.values.join}"
end