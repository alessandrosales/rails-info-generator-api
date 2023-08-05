module FullAddress
  extend ActiveSupport::Concern

  def get_fake_address
    Faker::Config.locale = 'pt-BR'

    {
      street: Faker::Address.street_name,
      number: Faker::Address.building_number,
      zipcode: Faker::Address.zip,
      neighbourhood: random_neighbourhood,
      city: Faker::Address.city,
      state: Faker::Address.state_abbr
    }
  end

  private

  def random_neighbourhood
    ['Pinheiros',
     'Vila Madalena',
     'Moema',
     'Itaim Bibi',
     'Jardins',
     'Santana',
     'Vila Mariana',
     'Copacabana',
     'Ipanema',
     'Leblon',
     'Botafogo',
     'Lapa',
     'Tijuca',
     'Santa Teresa',
     'Flamengo',
     'Glória',
     'Laranjeiras',
     'Leme',
     'Jardim Botânico',
     'Barra',
     'Ondina',
     'Itapuã',
     'Pituba',
     'Rio Vermelho',
     'Stiep',
     'Brotas',
     'Caminho das Árvores',
     'Pernambués',
     'Cidade Baixa',
     'Imbuí',
     'Bonfim',
     'Meireles',
     'Aldeota',
     'Praia de Iracema',
     'Cocó',
     'Dionísio Torres',
     'Varjota',
     'João XXIII',
     'Messejana',
     'Montese',
     'Parangaba',
     'Benfica',
     'Antônio Bezerra'].sample
  end
end
