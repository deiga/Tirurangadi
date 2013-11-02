class EventsController < ApplicationController

  respond_to :html, :json

  def index
      @events = Event.all
  end

  def edit
    @event = Event.find(params[:id])
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
    @event = Event.find(params[:id])
    @event.update_attributes(event_params)
    redirect_to event_path
  end

  def show
    @event = Event.find(params[:id])
    @attendees = @event.attendees
  end

  def new
    @event = Event.new
  end

  def attendance
    attendee = Attendee.create(name: attendance_params[:name])
    candidates = attendance_params[:candidates]
    candidates.each do |k,v|
      Attendance.create(attendee: attendee, candidate_id: k, data: v)
    end
    redirect_to event_path
  end

  private
    def event_params
      params.require(:event).permit(:name, :created_by, :location, :deadline, candidates_attributes: [:title, :time, :_destroy])
    end

    def attendance_params
      params.require(:attendance).permit!#(:name, :candidates)
    end
end
