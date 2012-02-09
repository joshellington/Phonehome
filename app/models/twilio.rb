class TwilioSMS

  @account_sid = 'ACb56a1d3b140d28b8167ca2416d8b6d7b'
  @auth_token = '0b2cd03fa04fb821c90bd3e4457df20a'
  $client = Twilio::REST::Client.new(@account_sid, @auth_token)

  def initialize
  end

  def self.send(to, msg)
    $client.account.sms.messages.create(
      :from => '+14155992671',
      :to => to.to_s,
      :body => msg.to_s
    )
    "success"
  end

  def self.get(sms)
    puts sms.inspect
  end

end