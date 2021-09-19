class ReminderSerializer
  include JSONAPI::Serializer
  attributes :category, :start, :end, :description, :task_id
end
