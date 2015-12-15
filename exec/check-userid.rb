require 'slack-ruby-client'
require 'dotenv'
require_relative '../config/initialize.rb'

client = Slack::Web::Client.new

user = client.users_list['members'].detect{ |u| u['name'] == ARGV[0] }

if user.nil?
  puts "I can not find this user. Please confirm that this user exist."
else
  puts user['id']
end
