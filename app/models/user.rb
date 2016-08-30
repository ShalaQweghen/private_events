class User < ApplicationRecord
	has_many :events, :foreign_key => :creator_id
	has_many :invitations, :foreign_key => :attendee_id
	has_many :attended_events, :through => :invitations

	def upcoming_events
		attended_events.where("date > ?", Time.now)
	end

	def previous_events
		attended_events.where("date < ?", Time.now)
	end
end
