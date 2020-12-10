# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe '#age' do
    it 'returns patient age' do
      patient = Patient.new(birthdate: '1989-01-01')
      expect { patient.age }.to raise_error('Not implemented')
    end
  end

  describe '#under_eighteen?' do
    it 'returns true' do
      patient = Patient.new(birthdate: '1989-01-01')
      expect { patient.under_eighteen? }.to raise_error('Not implemented')
    end
  end
end
