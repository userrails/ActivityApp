class EventBroadcastJob < ApplicationJob
  queue_as :default

  # def perform(*args)
  #   # Do something later
  # end

  def perform(event, notification_count)
    ActionCable.server.broadcast 'activity_channel', {message: render_event(event), notification_count: notification_count}
  end

  private

  def render_event(event)
    ApplicationController.renderer.render(partial: 'events/event', locals: { event: event })
  end
end
