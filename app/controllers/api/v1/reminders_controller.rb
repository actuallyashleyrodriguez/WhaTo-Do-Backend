class Api::V1::RemindersController < ApplicationController
    def index
        reminders = Reminder.all

        render json: reminders
    end

    def create
        reminder = Reminder.new(reminder_params)
    end



    private
    

    def reminder_params
        params.require(:reminder).permit!
    end
end
