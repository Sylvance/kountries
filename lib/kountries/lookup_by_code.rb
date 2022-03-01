# frozen_string_literal: true

module Kountries
  # lookup country by code
  class LookupByCode
    def self.call(code:)
      new(code).call
    end

    def initialize(code)
      @code = code
    end

    def call
      country_lookup
    end

    private

    attr_reader :code

    def country_lookup
      african_country ||
        american_country ||
        asian_country ||
        european_country ||
        oceania_country || nil
    end

    def african_country
      Kountries::Africa.find_country_by_code(code)
    end

    def american_country
      Kountries::America.find_country_by_code(code)
    end

    def asian_country
      Kountries::Asia.find_country_by_code(code)
    end

    def european_country
      Kountries::Europe.find_country_by_code(code)
    end

    def oceania_country
      Kountries::Oceania.find_country_by_code(code)
    end
  end
end
