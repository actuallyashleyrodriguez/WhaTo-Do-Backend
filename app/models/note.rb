class Note < ApplicationRecord
    belongs_to :task, optional: true
    validates :description, presence: true
end
