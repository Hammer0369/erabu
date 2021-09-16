Rails.application.routes.draw do
  get 'groups/index'
  root to: 'groups#index'
end
