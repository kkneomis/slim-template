class PagesController < ApplicationController
  def login
  end

  def signup
  end

  def profile
  end

  def list_spaces
  end

  def datesearch
  end

  def detail
  end

  def booking
  end

  def client_signup
  end

  def create_space
  end

  def payment
  end

  def home
  end

  def onsite_home
    render :layout => 'onsite'
  end

  def onsite_spacedetail
    render :layout => 'onsite'
  end

  def get_events
    respond_to do |format|
      format.json {render json: {"get_events"}, layout: false }
      format.html {render json: {}, layout: false }
    end
  end
end
