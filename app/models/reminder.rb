class Reminder < ApplicationRecord
    belongs_to :task, optional: true
    validates :end, presence: true
end
