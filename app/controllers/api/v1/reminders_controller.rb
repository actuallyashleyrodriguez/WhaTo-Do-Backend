class Api::V1::RemindersController < ApplicationController
    def index
        reminders = Reminder.all

        render json: ReminderSerializer.new(reminders)
    end

    def create
        reminder = Reminder.new(reminder_params)

        if reminder.save
            render json: ReminderSerializer.new(reminder), status: :accepted
        else
            render json: {errors: reminder.errors.full_messages}, status: :unprocessible_entity
        end
    end



    private
    

    def reminder_params
        params.require(:reminder).permit!
    end
end
