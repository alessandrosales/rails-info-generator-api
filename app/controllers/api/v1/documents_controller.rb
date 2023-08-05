class Api::V1::DocumentsController < ApplicationController
  def cpf
    render json: { cpf: Faker::CPF.pretty }
  end

  def cnpj
    render json: { cnpj: Faker::CNPJ.pretty }
  end
end
