# frozen_string_literal: true

require_relative "kountries/africa"
require_relative "kountries/america"
require_relative "kountries/asia"
require_relative "kountries/europe"
require_relative "kountries/lookup_by_code"
require_relative "kountries/lookup_by_name"
require_relative "kountries/oceania"
require_relative "kountries/version"

# Kountries gem
module Kountries
  class Error < StandardError; end

  def self.as_struct(country_class)
    OpenStruct.new(
      alpha2: country_class::ALPHA_2,
      alpha3: country_class::ALPHA_3,
      country_code: country_class::COUNTRY_CODE,
      name: country_class::NAME,
      unofficial_names: country_class::UN_OFFICIAL_NAMES
    )
  end

  def self.empty_struct
    OpenStruct.new(
      alpha2: nil,
      alpha3: nil,
      country_code: nil,
      name: nil,
      unofficial_names: nil
    )
  end
end
