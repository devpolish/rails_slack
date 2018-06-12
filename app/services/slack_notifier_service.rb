class SlackNotifierService
  def initialize(params)
    @message = params[:message]
  end

  def notify_slack
    notifier = Slack::Notifier.new ENV.fetch('SLACK_WEBHOOK_URL')
    notifier.ping @message
  end

  def perform
    notify_slack
  end

end
