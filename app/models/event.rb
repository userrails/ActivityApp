class Event < ApplicationRecord
  after_create_commit { EventBroadcastJob.perform_later(self, Event.unseen.count) }

  scope :unseen, -> { where(seen: false) }
end
