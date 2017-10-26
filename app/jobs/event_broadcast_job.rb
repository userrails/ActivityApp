class EventBroadcastJob < ApplicationJob
  queue_as :default

  # def perform(*args)
  #   # Do something later
  # end

  def perform(event)
    ActionCable.server.broadcast 'activity_channel', message: render_event(event)
  end

  private

  def render_event(event)
    ApplicationController.renderer.render(partial: 'events/event', locals: { event: event })
  end
end
