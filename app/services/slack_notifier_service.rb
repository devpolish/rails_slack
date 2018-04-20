class SlackNotifierService
  def initialize(params)
    @message = params[:message]
  end

  def notify_slack
    notifier = Slack::Notifier.new "https://hooks.slack.com/services/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"
    notifier.ping @message
  end

  def perform
    notify_slack
  end

end
