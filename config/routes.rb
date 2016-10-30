Rails.application.routes.draw do
  root to: 'pages#index'

  resource :feedback, only: %i(new create)
end
