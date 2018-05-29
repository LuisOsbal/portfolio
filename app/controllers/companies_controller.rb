# frozen_string_literal: true

class CompaniesController < ApplicationController
  def index
  end

  def show
    @company = timeline_service(company_id: params[:id]).show
  end

  private

  # This method initialize the service
  # This service has an attribute called params that it will filed with the
  # params that the controller send
  def timeline_service(hash_params)
    @timeline_service ||= CompanyService.new(hash_params)
  end
end
