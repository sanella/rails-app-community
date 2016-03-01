class EventsController < ApplicationController

  def index
    @events = Event.all
  end
  def show
    params.inspect
    @event = Event.find(params[:id])
  end
  def new
    @event = Event.new
  end
  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to (events_path())
    else
      render :new
    end
  end
  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if (@event.update_attributes(event_params))
      redirect_to (event_path(@event))
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    event_name = @event.name
    @event.destroy
    flash[:notice] = "Event #{event_name} is deleted"
    redirect_to events_path()
  end

  def event_params
    params.require(:event).permit(:name, :date, :description, :image)
  end
  private :event_params
end
