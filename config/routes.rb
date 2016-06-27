Rails.application.routes.draw do
  # root to: 'pages#show', id: 'client'

  get 'landing/:id' => "high_voltage/pages#show", as: :page, format: false

  get 'mail', to: 'mail#send'
  post 'mail', to: 'mail#send'
  
end
