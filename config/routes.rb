Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api do
    namespace :v1 do
      get 'addresses', to: 'addresses#index'
      get 'documents/cpf', to: 'documents#cpf'
      get 'documents/cnpj', to: 'documents#cnpj'
    end
  end
end
