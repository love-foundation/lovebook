class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
  end

  def edit
  end

  def destroy
  end
end
