class Task < ApplicationRecord
    has_many :reminders
    has_many :notes

    validates  :date, :description, :status, presence: true

    
end
