class EventsController < ApplicationController

  respond_to :html, :json

  def index
      @events = Event.all
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to events_url, notice: 'Thank you for your order.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: 'Failure' }
      end
    end
  end

  def update
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  private
    def event_params
      params.require(:event).permit(:name, :created_by, :location, :deadline, candidates_attributes: [:title, :time, :_destroy])
    end
end
