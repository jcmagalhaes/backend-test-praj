# frozen_string_literal: true

class Patient < ActiveRecord::Base
  belongs_to :entity, optional: true

  def age
    raise 'Not implemented'
  end

  def under_eighteen?
    raise 'Not implemented'
  end
end
