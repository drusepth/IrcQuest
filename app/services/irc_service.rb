class IrcService < Service
  IRC_NETWORK = 'irc.wobscale.website'

  def self.client_for name:, location:
  	bot = Cinch::Bot.new do
      configure do |c|
        c.nick     = name
        c.name     = name
        c.realname = name
        c.server    = IRC_NETWORK
        c.channels = ["##{location}"]
      end

      GameMasterResponseService.responses.each do |trigger_regex, response_block|
        on :message, trigger_regex do |m|
          m.reply response_block.yield(m)
        end
      end



    end
  end

  # Still need to call bot.start on the response we return here
end