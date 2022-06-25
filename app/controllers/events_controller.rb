# frozen_string_literal: true

class EventsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @events = pagy(Event.all)
  end

  def show
    @event = Event.find(params[:id])
  end
end
