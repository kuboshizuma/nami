require 'sinatra/base'

module SlackSpeakbot
  class Web < Sinatra::Base
    get '/' do
      "I'd like to talk to you."
    end
  end
end
