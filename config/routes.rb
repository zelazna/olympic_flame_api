Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/api' do
    get 'polls', to: 'polls#index'
    post 'polls', to: 'polls#create'
  end
end
