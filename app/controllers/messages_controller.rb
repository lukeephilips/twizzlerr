class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end
  def create
    @message = Message.new(message_params)
    if @message.save
      Address.create(number: message_params[:to])
      flash[:notice] = "You texted '#{@message.body}'"
      redirect_to messages_path
    else
      flash[:alert] = @message.errors.full_messages.each{|x| x.to_s}.join

      render :new
    end
  end

private
  def message_params
    params.require(:message).permit(:to, :from, :body)
  end
end
