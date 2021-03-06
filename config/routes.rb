# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins

  namespace :admin do
    resources :admins
  end

  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
