class TaskSerializer
  include JSONAPI::Serializer
  attributes :status, :category, :date, :description, :notes
  has_many :notes

  attribute :date do |time|
    time.date.strftime( "%B %e,  %Y %l %M %p")
  end
  
end
