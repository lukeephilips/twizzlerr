require 'rails_helper'

describe Message, :vcr => true do
  it "doesn't save the message if twilio gives an error" do
    message = Message.new(:body => 'dicky cheezburger says hi', :to => '541357', :from => '9712735203')
    message.save.should be false
  end
end
