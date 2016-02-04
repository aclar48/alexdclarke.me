Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  root 'landing#index'

  get '/resume', to: 'resumes#show'
  get '/pdf_resume', to: 'resumes#pdf' if Rails.env.development?

end
