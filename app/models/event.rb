# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :user
  validates :title, :subtitle, :event_start_date, :event_end_date, :description, presence: true
end
