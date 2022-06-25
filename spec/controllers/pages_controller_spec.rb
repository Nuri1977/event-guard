# frozen_string_literal: true

require 'rails_helper'

describe PagesController, type: :controller do
  describe 'GET home' do
    it 'has a success status code' do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET about' do
    it 'has a success status code' do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET contact' do
    it 'returns 200 line of code' do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST create_contact' do
    let!(:contact) { build(:contact) }

    context 'with valid attributes' do
      it 'creates the new contact' do
        expect do
          post :create_contact,
               params: { contact: contact.attributes }
          expect(controller).to set_flash[:notice].to(/Contact Has been created/)
        end.to change(Contact, :count).by(1)
      end
    end

    context 'when attributes are invalid' do
      before { contact.full_name = '', contact.email = '', contact.message = '' }

      it 'doesnt create new contact' do
        expect do
          post :create_contact, params: { contact: contact.attributes }
        end.to change(Contact, :count).by(0)
      end
    end
  end
end
