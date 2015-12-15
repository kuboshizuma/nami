require 'slack-ruby-client'
require 'dotenv'
require_relative '../config/initialize.rb'

client = Slack::Web::Client.new

channel = client.channels_list['channels'].detect{ |u| u['name'] == ARGV[0] }

if channel.nil?
    puts "I can not find this channel. Please confirm that this channel exist."
else
    puts channel['id']
end
