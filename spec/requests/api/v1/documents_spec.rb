require 'swagger_helper'

RSpec.describe 'documents', type: :request do
  path '/api/v1/documents/cpf' do
    get 'Get a random CPF' do
      tags 'Document'
      response 200, 'CPF returned successfully' do
        example 'application/json', :example, {
          cpf: '287.822.271-79'
        }
        run_test! do |res|
          expect(res).to have_http_status 200
        end
      end
    end
  end
  path '/api/v1/documents/cnpj' do
    get 'Get a random CNPJ' do
      tags 'Document'
      response 200, 'CNPJ returned successfully' do
        example 'application/json', :example, {
          cnpj: '38.108.052/0722-22'
        }
        run_test! do |res|
          expect(res).to have_http_status 200
        end
      end
    end
  end
end
