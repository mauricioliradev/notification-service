class NotificationsController < ApplicationController
  # GET /notifications
  def index
    @notifications = Notification.order(created_at: :desc).limit(50)
    render json: @notifications
  end

  # POST /notifications
  def create
    @notification = Notification.new(notification_params)

    if @notification.save
      render json: @notification, status: :created
    else
      render json: { errors: @notification.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def notification_params
    params.require(:notification).permit(:task_id, :event_type, :read_at, data: {})
  end
end