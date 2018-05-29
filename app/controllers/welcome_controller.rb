# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @articles = welcome_service(status: true).show_all
    @companies = welcome_service({}).show_companies
  end

  private

  # This method initialize the service
  # This service has an attribute called params that it will filed with the
  # params that the controller send
  def welcome_service(hash_params)
    @welcome_service ||= WelcomeService.new(hash_params)
  end
end
