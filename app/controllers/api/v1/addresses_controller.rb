class Api::V1::AddressesController < ApplicationController
  include FullAddress

  def index
    render json: get_fake_address
  end
end
