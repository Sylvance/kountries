# frozen_string_literal: true

module Kountries
  class LookupByName
    def self.call(country:)
      new(country).call
    end

    def initialize(country)
      @country = country
    end

    def call
      return nil if country.blank?

      country_lookup
    end

    private

    attr_reader :country

    def country_lookup
      african_country.name ||
        american_country.name ||
        asian_country.name ||
        european_country.name ||
        oceania_country.name || nil
    end

    def african_country
      Kountries::Africa.find_country_by_name(country)
    end

    def american_country
      Kountries::America.find_country_by_name(country)
    end

    def asian_country
      Kountries::Asia.find_country_by_name(country)
    end

    def european_country
      Kountries::Europe.find_country_by_name(country)
    end

    def oceania_country
      Kountries::Oceania.find_country_by_name(country)
    end
  end
end
