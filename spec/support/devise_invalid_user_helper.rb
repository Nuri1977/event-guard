# frozen_string_literal: true

module DeviseInvalidUserHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.create(first_name: '', last_name: '',
                              email: '', password: '', password_confirmation: '')
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
