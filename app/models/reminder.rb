class Reminder < ApplicationRecord
    belongs_to :task, optional: true
end
