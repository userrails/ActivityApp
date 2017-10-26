class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :detect_count

  def detect_count
    @count = Event.unseen.count
  end
end
