class RepliesController < ApplicationController
before_action :set_user, only: [:destroy]

  def create
    @tweeet = Tweeet.find(params[:tweet_id])
    @reply = @tweeet.replies.create(reply_params)
    redirect_to root_path, notice: 'Reply was successfully created.'
  end

  def destroy
    @tweeet = Tweeet.find(params[:id])
    @reply.destroy
    redirect_to tweeets_url, notice: 'Reply was successfully destroyed.'
  end

  private 

  def reply_params
    params.require(:reply).permit(:content, :user_id)
  end

  def set_user
    @reply = Reply.find(params[:id])
  end
end
