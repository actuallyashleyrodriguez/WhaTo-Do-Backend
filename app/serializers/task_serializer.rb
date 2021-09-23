class TaskSerializer
  include JSONAPI::Serializer
  attributes :status, :category, :date, :description, :notes
  has_many :notes

  
end
