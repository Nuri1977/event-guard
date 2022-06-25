# frozen_string_literal: true

ActiveAdmin.register Event do
  permit_params :title, :subtitle, :event_start_date, :event_end_date, :description, :user_id
end
