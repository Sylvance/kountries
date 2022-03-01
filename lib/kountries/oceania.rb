# frozen_string_literal: true

require "ostruct"

module Kountries
  # Oceania
  module Oceania
    def self.find_country_by_name(name)
      constants.each do |country|
        ocenia_country_class = Module.const_get "Kountries::Oceania::#{country}"
        return as_struct(ocenia_country_class) if ocenia_country_class::NAME.upcase == name.upcase
        return as_struct(ocenia_country_class) if ocenia_country_class::UN_OFFICIAL_NAMES.include?(name.capitalize)
      end

      empty_struct
    end

    def self.find_country_by_code(code)
      return empty_struct unless Kountries::Oceania.constants.include?(code.intern)

      ocenia_country_class = Module.const_get "Kountries::Oceania::#{code}"
      return as_struct(ocenia_country_class) if ocenia_country_class::ALPHA_2 == code
    end

    def self.as_struct(oceania_country_class)
      OpenStruct.new(
        alpha2: oceania_country_class::ALPHA_2,
        alpha3: oceania_country_class::ALPHA_3,
        country_code: oceania_country_class::COUNTRY_CODE,
        name: oceania_country_class::NAME,
        unofficial_names: oceania_country_class::UN_OFFICIAL_NAMES
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

    class PG
      ALPHA_2 = "PG"
      ALPHA_3 = "PNG"
      COUNTRY_CODE = "675"
      NAME = "Papua New Guinea"
      UN_OFFICIAL_NAMES = ["Papua New Guinea", "Papua-Neuguinea",
                           "Papouasie Nouvelle-Guinée", "Papúa Nueva Guinea",
                           "パプアニューギニア", "Papoea-Nieuw-Guinea"].freeze
    end

    class NU
      ALPHA_2 = "NU"
      ALPHA_3 = "NIU"
      COUNTRY_CODE = "683"
      NAME = "Niue"
      UN_OFFICIAL_NAMES = %w[Niue ニウエ].freeze
    end

    class PF
      ALPHA_2 = "PF"
      ALPHA_3 = "PYF"
      COUNTRY_CODE = "689"
      NAME = "French Polynesia"
      UN_OFFICIAL_NAMES = ["French Polynesia", "Französisch-Polynesien", "Polynésie Française",
                           "Polinesia Francesa", "フランス領ポリネシア", "Frans-Polynesië"].freeze
    end

    class TK
      ALPHA_2 = "TK"
      ALPHA_3 = "TKL"
      COUNTRY_CODE = "690"
      NAME = "Tokelau"
      UN_OFFICIAL_NAMES = ["Tokelau", "Îles Tokelau", "Islas Tokelau", "トケラウ"].freeze
    end

    class NF
      ALPHA_2 = "NF"
      ALPHA_3 = "NFK"
      COUNTRY_CODE = "672"
      NAME = "Norfolk Island"
      UN_OFFICIAL_NAMES = ["Norfolk Island", "Norfolkinsel", "Île de Norfolk", "Isla de Norfolk", "ノーフォーク島",
                           "Norfolkeiland"].freeze
    end

    class CC
      ALPHA_2 = "CC"
      ALPHA_3 = "CCK"
      COUNTRY_CODE = "61"
      NAME = "Cocos (Keeling) Islands"
      UN_OFFICIAL_NAMES = ["Cocos (Keeling) Islands", "Kokosinseln", "ココス（キーリング）諸島", "Cocoseilanden"].freeze
    end

    class VU
      ALPHA_2 = "VU"
      ALPHA_3 = "VUT"
      COUNTRY_CODE = "678"
      NAME = "Vanuatu"
      UN_OFFICIAL_NAMES = %w[Vanuatu バヌアツ].freeze
    end

    class WS
      ALPHA_2 = "WS"
      ALPHA_3 = "WSM"
      COUNTRY_CODE = "685"
      NAME = "Samoa"
      UN_OFFICIAL_NAMES = %w[Samoa サモア].freeze
    end

    class WF
      ALPHA_2 = "WF"
      ALPHA_3 = "WLF"
      COUNTRY_CODE = "681"
      NAME = "Wallis and Futuna"
      UN_OFFICIAL_NAMES = ["Wallis and Futuna", "Wallis und Futuna", "Wallis et Futuna", "Wallis y Futuna", "ウォリス・フツナ",
                           "Wallis en Futuna"].freeze
    end

    class NR
      ALPHA_2 = "NR"
      ALPHA_3 = "NRU"
      COUNTRY_CODE = "674"
      NAME = "Nauru"
      UN_OFFICIAL_NAMES = %w[Nauru ナウル].freeze
    end

    class GU
      ALPHA_2 = "GU"
      ALPHA_3 = "GUM"
      COUNTRY_CODE = "1"
      NAME = "Guam"
      UN_OFFICIAL_NAMES = %w[Guam グアム].freeze
    end

    class FJ
      ALPHA_2 = "FJ"
      ALPHA_3 = "FJI"
      COUNTRY_CODE = "679"
      NAME = "Fiji"
      UN_OFFICIAL_NAMES = %w[Fiji Fidschi Fidji フィジー].freeze
    end

    class CX
      ALPHA_2 = "CX"
      ALPHA_3 = "CXR"
      COUNTRY_CODE = "61"
      NAME = "Christmas Island"
      UN_OFFICIAL_NAMES = ["Christmas Island", "Weihnachtsinsel", "クリスマス島", "Christmaseiland"].freeze
    end

    class TO
      ALPHA_2 = "TO"
      ALPHA_3 = "TON"
      COUNTRY_CODE = "676"
      NAME = "Tonga"
      UN_OFFICIAL_NAMES = %w[Tonga トンガ].freeze
    end

    class PN
      ALPHA_2 = "PN"
      ALPHA_3 = "PCN"
      COUNTRY_CODE = "64"
      NAME = "Pitcairn"
      UN_OFFICIAL_NAMES = ["Pitcairn", "ピトケアン", "Pitcairneilanden", "Pitcairn Islands"].freeze
    end

    class AU
      ALPHA_2 = "AU"
      ALPHA_3 = "AUS"
      COUNTRY_CODE = "61"
      NAME = "Australia"
      UN_OFFICIAL_NAMES = %w[Australia Australien Australie オーストラリア Australië].freeze
    end

    class PW
      ALPHA_2 = "PW"
      ALPHA_3 = "PLW"
      COUNTRY_CODE = "680"
      NAME = "Palau"
      UN_OFFICIAL_NAMES = %w[Palau パラオ].freeze
    end

    class TV
      ALPHA_2 = "TV"
      ALPHA_3 = "TUV"
      COUNTRY_CODE = "688"
      NAME = "Tuvalu"
      UN_OFFICIAL_NAMES = %w[Tuvalu ツバル].freeze
    end

    class CK
      ALPHA_2 = "CK"
      ALPHA_3 = "COK"
      COUNTRY_CODE = "682"
      NAME = "Cook Islands"
      UN_OFFICIAL_NAMES = ["Cook Islands", "Cookinseln", "Îles Cook", "Islas Cook", "クック諸島", "Cookeilanden"].freeze
    end

    class KI
      ALPHA_2 = "KI"
      ALPHA_3 = "KIR"
      COUNTRY_CODE = "686"
      NAME = "Kiribati"
      UN_OFFICIAL_NAMES = %w[Kiribati キリバス].freeze
    end

    class MH
      ALPHA_2 = "MH"
      ALPHA_3 = "MHL"
      COUNTRY_CODE = "692"
      NAME = "Marshall Islands"
      UN_OFFICIAL_NAMES = ["Marshall Islands", "Marshallinseln", "Îles Marshall", "Islas Marshall", "マーシャル諸島",
                           "Marshalleilanden"].freeze
    end

    class NC
      ALPHA_2 = "NC"
      ALPHA_3 = "NCL"
      COUNTRY_CODE = "687"
      NAME = "New Caledonia"
      UN_OFFICIAL_NAMES = ["New Caledonia", "Neukaledonien", "Nouvelle-Calédonie", "Nueva Caledonia", "ニューカレドニア",
                           "Nieuw-Caledonië"].freeze
    end

    class MP
      ALPHA_2 = "MP"
      ALPHA_3 = "MNP"
      COUNTRY_CODE = "1"
      NAME = "Northern Mariana Islands"
      UN_OFFICIAL_NAMES = ["Northern Mariana Islands", "Nördliche Marianen", "Mariannes du Nord",
                           "Islas Marianas del Norte", "北マリアナ諸島",
                           "Noordelijke Marianeneilanden"].freeze
    end

    class NZ
      ALPHA_2 = "NZ"
      ALPHA_3 = "NZL"
      COUNTRY_CODE = "64"
      NAME = "New Zealand"
      UN_OFFICIAL_NAMES = ["New Zealand", "Neuseeland", "Nouvelle Zélande", "Nueva Zelanda", "ニュージーランド",
                           "Nieuw-Zeeland"].freeze
    end

    class FM
      ALPHA_2 = "FM"
      ALPHA_3 = "FSM"
      COUNTRY_CODE = "691"
      NAME = "Micronesia (Federated States of)"
      UN_OFFICIAL_NAMES = %w[Micronesia Mikronesien Micronésie ミクロネシア連邦 Micronesië].freeze
    end

    class SB
      ALPHA_2 = "SB"
      ALPHA_3 = "SLB"
      COUNTRY_CODE = "677"
      NAME = "Solomon Islands"
      UN_OFFICIAL_NAMES = ["Solomon Islands", "Salomonen", "Îles Salomon", "Islas Salomón", "ソロモン諸島",
                           "Salomonseilanden"].freeze
    end

    class AS
      ALPHA_2 = "AS"
      ALPHA_3 = "ASM"
      COUNTRY_CODE = "1"
      NAME = "American Samoa"
      UN_OFFICIAL_NAMES = ["American Samoa", "Amerikanisch-Samoa", "Samoa américaines", "Samoa Americana", "アメリカ領サモア",
                           "Amerikaans Samoa"].freeze
    end
  end
end
