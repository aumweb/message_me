class Message < ApplicationRecord
	belongs_to :user
	validates :body,presence: true
	scope :display_limited_message, -> {order(:created_at).last(20)}
end
