require 'swagger_helper'

RSpec.describe 'addresses', type: :request do
  path '/api/v1/addresses' do
    get 'Get a full address' do
      tags 'Address'
      response 200, 'Address returned successfully' do
        example 'application/json', :example, {
          street: 'Marginal Luiz Felipe',
          number: '7204',
          zipcode: '21926-291',
          neighbourhood: 'Itaim Bibi',
          city: 'Buriti dos Montes',
          state: 'PR'
        }

        run_test! do |res|
          expect(res).to have_http_status 200
        end
      end
    end
  end
end
