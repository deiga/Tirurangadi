class EventsController < ApplicationController
  def index
      @events = Event.all
  end

  def edit
  end

  def create
  end

  def update
  end

  def show
    @event = Event.find(params[:id])
  end
end
