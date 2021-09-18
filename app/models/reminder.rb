class Reminder < ApplicationRecord
    belongs_to :task, optional: true
    has_many :notes
    validates :end, presence: true
end
