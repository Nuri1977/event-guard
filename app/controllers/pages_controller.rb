# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @events = Event.last(6)
  end

  def about; end

  def contact
    @contact = Contact.new
  end

  def create_contact
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: 'Contact Has been created'
    else
      render :contact
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:full_name, :email, :message)
  end
end
