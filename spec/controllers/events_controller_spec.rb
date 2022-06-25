# frozen_string_literal: true

require 'rails_helper'

describe EventsController, type: :controller do
  let(:event) { create(:event) }

  describe 'GET index' do
    it 'has a success status code' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET show' do
    it 'shows the' do
      get :show, params: { id: event.id }
      expect(response).to have_http_status(:success)
    end
  end
end
