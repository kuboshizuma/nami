Dotenv.load

Slack.configure do |config|
    config.token = ENV['SLACK_API_TOKEN']
    fail 'Missing ENV[SLACK_API_TOKEN]! Please set up .env.' unless config.token
end
