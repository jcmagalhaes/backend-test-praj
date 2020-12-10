# frozen_string_literal: true

require 'csv'

namespace :import do
  desc 'Import patients'
  task :patients, [:file] => [:environment] do |_t, args|
    csv_file = URI.open(args[:file])

    CSV.new(csv_file, headers: true).each do |row|
      Patient.create!(
        name: row['NOME'],
        birthdate: row['DATA_NASCIMENTO'],
        taxpayer: row['NIF'],
        email: row['EMAIL'],
        entity_id: row['ID_ENTIDADE']
      )
    end
  end
end
