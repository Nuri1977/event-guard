# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, dependent: :destroy

  validates :first_name, :last_name, presence: true
  validates :email, email: { mode: :strict }

  def full_name
    "#{first_name.humanize} #{last_name.humanize}"
  end
end
