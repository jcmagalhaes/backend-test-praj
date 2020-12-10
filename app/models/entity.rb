# frozen_string_literal: true

class Entity < ActiveRecord::Base
  has_many :patients
end
