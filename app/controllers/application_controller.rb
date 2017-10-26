class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :count_unseen_event

  def count_unseen_event
    @count = Event.unseen.count
  end
end
