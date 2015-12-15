module SlackSpeakBot
  module Commands
   class Aloud < SlackRubyBot::Commands::Base

      def self.speak
        speak_text = "\"Merry Christmas!\""
        command = if /darwin/ === RUBY_PLATFORM
                    "say -v Agnes -r 130 #{speak_text}"
                  else
                    "echo #{speak_text} | espeak -s 120 -p 99"
                  end
        system(command)
      end

      match "Merry Christmas!" do |client, data, match|
        send_message client, data.channel, 'Merry Christmas!'
        speak
      end

    end
  end
end
