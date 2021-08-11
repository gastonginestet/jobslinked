class FollowsController < ApplicationController
  before_action :set_follow, only: %i[show update destroy]
  before_action :authorize_request

  # GET /follows
  def index
    @follows = if current_user.role_id == 1
                 Follow.all
               elsif current_user.role_id == 2
                 Follow.where(following_id: @current_user.job_alerts)
               else
                 Follow.where(follower_id: @current_user.id)
               end
    render json: @follows
  end

  # GET /follows/1
  def show
    render json: @follow
  end

  # POST /follows
  def create
    @follow = Follow.new(following_id: params[:job_alert].to_i)

    @follow.follower_id = @current_user.id

    if @follow.save
      render json: @follow, status: :created, location: @follow
    else
      render json: @follow.errors, status: :unprocessable_entity
    end
  end

  # DELETE /follows/1
  def destroy
    @follow.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_follow
    @follow = Follow.find(params[:id])
  end
end
