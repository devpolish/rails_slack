class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    SlackNotifierService.new(message: @message.body).perform
  end

  private
  def message_params
    params.require(:message).permit(:body)
  end
end
