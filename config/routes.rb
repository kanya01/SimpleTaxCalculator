# Rails.application.routes.draw do
#   get 'tax_calculators/new'
#   get 'tax_calculators/result', to: 'tax_calculators#result', as: 'result_tax_calculators'
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   # get "up" => "rails/health#show", as: :rails_health_check
#   root'tax_calculators#new'
#   # Defines the root path route ("/")
#   # root "posts#index"
# end
Rails.application.routes.draw do
  get 'tax_calculators/new', to: 'tax_calculators#new', as: 'new_tax_calculators'
  get 'tax_calculators/result', to: 'tax_calculators#result', as: 'result_tax_calculators'

  root 'tax_calculators#new'
end
