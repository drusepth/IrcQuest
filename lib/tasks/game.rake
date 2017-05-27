namespace :game do
  task clear: :environment do
    # todo wipe everything lol
  end

  task run: :environment do
    bot = IrcService.client_for name: 'bob', location: 'bots'
    bot.start
  end
end