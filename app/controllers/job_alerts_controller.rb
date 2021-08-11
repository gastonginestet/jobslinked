class JobAlertsController < ApplicationController
  before_action :set_jobalert, only: %i[show update destroy]
  before_action :authorize_request

  # GET /job_alerts
  def index
    @jobalerts = JobAlert.all

    render json: @jobalerts
  end

  # GET /job_alerts/1
  def show
    authorize! :read, @jobalert

    render json: @jobalert
  end

  # POST /job_alerts
  def create
    authorize! :create, @jobalert || JobAlert
    @jobalert = JobAlert.new(message: jobalert_params)
    @jobalert.user_id = @current_user.id

    if @jobalert.save
      render json: @jobalert, status: :created, location: @jobalert
    else
      render json: @jobalert.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_alerts/1
  def update
    authorize! :update, @jobalert
    if @jobalert.update(jobalert_params)
      render json: @jobalert
    else
      render json: @jobalert.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_alerts/1
  def destroy
    authorize! :destroy, @jobalert

    @jobalert.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_jobalert
    @jobalert = JobAlert.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def jobalert_params
    params.require('message')
  end
end
