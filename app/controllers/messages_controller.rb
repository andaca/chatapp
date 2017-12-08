class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    #render plain: message_params.inspect

    @message = Message.new(message_params)
    @message.save
    #render plain: @message.inspect
    redirect_to @message
  end

  def show
    #render plain: Message.find(params[:id]).inspect
    @message = Message.find(params[:id])
  end

  def message_params
    p = {
      :sender => User.find_by_username(params[:message][:sender]),
      :recipient => User.find_by_username(params[:message][:recipient]),
      :msgText => params[:message][:msgText]
    }
    p
  end
end
