class NoteSerializer
  include JSONAPI::Serializer
  attributes :description, :task_id, :reminder_id
end
