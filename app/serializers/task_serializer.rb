class TaskSerializer
  include JSONAPI::Serializer
  attributes :status, :category, :date, :description

  
end
