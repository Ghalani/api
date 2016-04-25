# #https://hooks.slack.com/services/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
class BackendSlackbotService
  require 'slack-notifier'
  def initialize(channel = '#general')
    @notifier = Slack::Notifier.new ENV['SLACK_WEBHOOK_URL'], channel: channel, username: 'notifier'
  end

  def send(message = "Hello default")
    @notifier.ping message
  end
end
