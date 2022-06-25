# frozen_string_literal: true

module Dashboard
  class EventsController < Dashboard::DashboardController
    def index
      @events = current_user.events
    end

    def new
      @event = Event.new
    end

    def create
      @event = Event.new(event_params)
      @event.user_id = current_user.id

      if @event.save
        redirect_to @event
      else
        render :new
      end
    end

    private

    def event_params
      params.require(:event).permit(:title, :subtitle, :description, :event_start_date, :event_end_date)
    end
  end
end
