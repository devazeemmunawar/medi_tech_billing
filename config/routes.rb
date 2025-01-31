Rails.application.routes.draw do
  root 'pages#home'
  get 'services', to: 'pages#services'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'revenue_cycle_management', to: 'pages#revenue_cycle_management', as: 'revenue_cycle_management'
  get 'medical_billing_audit', to: 'pages#medical_billing_audit', as: 'medical_billing_audit'
  get 'provider_credentialing', to: 'pages#provider_credentialing', as: 'provider_credentialing'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get 'service-worker' => 'rails/pwa#service_worker', as: :pwa_service_worker
  get 'manifest' => 'rails/pwa#manifest', as: :pwa_manifest
  post 'schedule_consultation', to: 'consultations#schedule', as: 'schedule_consultation'
end
