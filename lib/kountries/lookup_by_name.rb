# frozen_string_literal: true

module Kountries
  # lookup country by name
  class LookupByName
    def self.call(name:)
      new(name).call
    end

    def initialize(name)
      @name = name
    end

    def call
      country_lookup
    end

    private

    attr_reader :name

    def country_lookup
      african_country ||
        american_country ||
        asian_country ||
        european_country ||
        oceania_country || nil
    end

    def african_country
      Kountries::Africa.find_country_by_name(name)
    end

    def american_country
      Kountries::America.find_country_by_name(name)
    end

    def asian_country
      Kountries::Asia.find_country_by_name(name)
    end

    def european_country
      Kountries::Europe.find_country_by_name(name)
    end

    def oceania_country
      Kountries::Oceania.find_country_by_name(name)
    end
  end
end
