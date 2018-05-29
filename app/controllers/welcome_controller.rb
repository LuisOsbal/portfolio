# frozen_string_literal: true

class WelcomeController < ApplicationController
  before_action :retrieve_timeline, only: %i[index]

  def index
    @articles = welcome_service(status: true).show_all
    @timeline = retrieve_timeline
  end

  private

  # This method initialize the service
  # This service has an attribute called params that it will filed with the
  # params that the controller send
  def welcome_service(hash_params)
    @welcome_service ||= WelcomeService.new(hash_params)
  end

  # Retrieve al the active dvertisement
  def retrieve_timeline
    Timeline.all
  end
end
