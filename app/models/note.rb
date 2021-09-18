class Note < ApplicationRecord
    belongs_to :task, optional: true
    belongs_to :Reminder, optional: true
    validates :description, presence: true
end
