# frozen_string_literal: true

class CompanyService
  def initialize(params = {})
    @params = params
  end

  def show_all
    @companies = retrieve_companies({})
  end

  def show
    @company = retrieve_companies(id: @params[:company_id]).first
  end

  private
  # Retrieve al the active companies
  def retrieve_companies(params)
    Company.where(params)
  end
end
