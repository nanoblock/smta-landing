Rails.application.routes.draw do
  root to: 'pages#show', id: 'home'

  get 'landing/:id' => "high_voltage/pages#show", as: :page, format: false

  # get 'mail', to: 'mail#send'
  # post 'mail', to: 'mail#send'

  get 'contact', to: 'contact#send'
  post 'contact', to: 'contact#send'

end
