# frozen_string_literal: true

class WelcomeService
  def initialize(params = {})
    @params = params
  end

  def show_all
    retrieve_articles(status: @params[:status])
  end

  def show
    retrieve_articles(
      status: @params[:status],
      id: @params[:article_id]
    )
  end

  def show_companies
    retrieve_companies
  end

  private

  # Retrieve the active articles
  def retrieve_articles(params)
    Article.where(params).limit(3)
  end

  # Retrieve companies
  def retrieve_companies
    Company.all.order(created_at: :desc)
  end
end
