class Notification < ApplicationRecord
  validates :task_id, presence: true
  validates :event_type, presence: true, inclusion: { 
    in: %w[task_created task_completed task_failed],
    message: "%{value} is not a valid event type" 
  }
end