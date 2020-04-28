class RepliesController < ApplicationController
before_action :set_user, only: [:edit, :update, :destroy]

  def new
    @reply = current_user.replies.build
  end

  def create
    @reply = current_user.replies.build(reply_params)
    if @reply.save 
      redirect_to root_path, notice: 'Reply was successfully created.'
    else
      render 'new' , notice: 'Reply was NOT created.'
    end
  end

  def edit    
  end

  def update
    if @reply.update(reply_params)
      redirect_to root_path, notice: 'Reply was successfully updated'
    else
      render 'edit', notice: 'Reply was NOT updated'
  end

  def destroy
    @reply.destroy
    redirect_to tweeets_url, notice: 'Reply was successfully destroyed.'
  end

  private 

  def reply_params
    params.require(:reply).permit(:content)
  end

  def set_user
    @reply = Reply.find(params[:id])
  end
end
