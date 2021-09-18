class Task < ApplicationRecord
    has_many :reminders
    has_many :notes
end
