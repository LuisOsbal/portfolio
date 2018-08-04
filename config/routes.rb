Rails.application.routes.draw do
  get 'profiles/index'
  root 'welcome#index'
  resources :articles
  resources :contacts, only: %i[new create]
  resources :companies, only: %i[index show]
  resources :profiles, only: %i[index]

  # get '/:locale' => 'welcome#index'
  def default_url_options(_options = {})
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end
end
