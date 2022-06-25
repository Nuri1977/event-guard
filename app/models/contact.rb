# frozen_string_literal: true

class Contact < ApplicationRecord
  validates :full_name, presence: true
  validates :email, email: { mode: :strict }
  validates :message, presence: true
end
