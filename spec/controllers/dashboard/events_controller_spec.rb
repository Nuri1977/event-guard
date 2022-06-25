# frozen_string_literal: true

require 'rails_helper'

describe Dashboard::EventsController, type: :controller do
  let!(:user) { create :user }
  let(:event_attributes) { attributes_for(:event) }

  before { sign_in user }

  describe 'GET dashboard/events' do
    it 'has a 200 status code' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET dashboard/event' do
    it 'has a 200 status code' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST create event' do
    context 'with valid attributes' do
      it 'creates new event' do
        expect do
          post :create,
               params: { event: event_attributes }
        end.to change(Event, :count).by(1)
      end
    end

    context 'with invalid attributes' do
      it 'doesnt create new event' do
        expect do
          post :create,
               params: { event: { title: '', description: '' } }
        end.to change(Event, :count).by(0)
      end
    end
  end
end
