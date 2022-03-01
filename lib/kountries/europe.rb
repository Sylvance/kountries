# frozen_string_literal: true

module Kountries
  # Europe
  module Europe
    def self.find_country_by_name(name)
      constants.each do |country|
        european_country_class = Module.const_get "Kountries::Europe::#{country}"
        return as_struct(european_country_class) if european_country_class::NAME.upcase == name.upcase
        return as_struct(european_country_class) if european_country_class::UN_OFFICIAL_NAMES.include?(name.capitalize)
      end

      empty_struct
    end

    def self.find_country_by_code(code)
      return empty_struct unless Kountries::Europe.constants.include?(code.intern)

      european_country_class = Module.const_get "Kountries::Europe::#{code}"
      return as_struct(european_country_class) if european_country_class::ALPHA_2 == code
    end

    def self.as_struct(european_country_class)
      OpenStruct.new(
        alpha2: european_country_class::ALPHA_2,
        alpha3: european_country_class::ALPHA_3,
        country_code: european_country_class::COUNTRY_CODE,
        name: european_country_class::NAME,
        unofficial_names: european_country_class::UN_OFFICIAL_NAMES
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

    class NL
      ALPHA_2 = "NL"
      ALPHA_3 = "NLD"
      COUNTRY_CODE = "31"
      NAME = "Netherlands"
      UN_OFFICIAL_NAMES = ["Netherlands", "The Netherlands", "Niederlande", "Pays-Bas", "Países Bajos", "オランダ",
                           "Nederland"].freeze
    end

    class LU
      ALPHA_2 = "LU"
      ALPHA_3 = "LUX"
      COUNTRY_CODE = "352"
      NAME = "Luxembourg"
      UN_OFFICIAL_NAMES = %w[Luxembourg Luxemburg Luxemburgo ルクセンブルク].freeze
    end

    class SM
      ALPHA_2 = "SM"
      ALPHA_3 = "SMR"
      COUNTRY_CODE = "378"
      NAME = "San Marino"
      UN_OFFICIAL_NAMES = ["San Marino", "Saint-Marin", "サンマリノ"].freeze
    end

    class MK
      ALPHA_2 = "MK"
      ALPHA_3 = "MKD"
      COUNTRY_CODE = "389"
      NAME = "North Macedonia"
      UN_OFFICIAL_NAMES = ["Macedonia", "Mazedonien", "Macédoine", "F.Y.R.O.M (Macedonia)", "マケドニア旧ユーゴスラビア共和国",
                           "Macedonië [FYROM].freeze", "Macedonia (The Former Yugoslav Republic of)",
                           "North Macedonia"].freeze
    end

    class UA
      ALPHA_2 = "UA"
      ALPHA_3 = "UKR"
      COUNTRY_CODE = "380"
      NAME = "Ukraine"
      UN_OFFICIAL_NAMES = %w[Ukraine Ucrania ウクライナ Oekraïne Украина Україна Украіна].freeze
    end

    class CH
      ALPHA_2 = "CH"
      ALPHA_3 = "CHE"
      COUNTRY_CODE = "41"
      NAME = "Switzerland"
      UN_OFFICIAL_NAMES = %w[Switzerland Schweiz Suisse Suiza スイス Zwitserland].freeze
    end

    class FO
      ALPHA_2 = "FO"
      ALPHA_3 = "FRO"
      COUNTRY_CODE = "298"
      NAME = "Faroe Islands"
      UN_OFFICIAL_NAMES = ["Faroe Islands", "Färöer-Inseln", "Îles Féroé", "Islas Faroe", "フェロー諸島", "Faeröer"].freeze
    end

    class GI
      ALPHA_2 = "GI"
      ALPHA_3 = "GIB"
      COUNTRY_CODE = "350"
      NAME = "Gibraltar"
      UN_OFFICIAL_NAMES = %w[Gibraltar ジブラルタル].freeze
    end

    class IS
      ALPHA_2 = "IS"
      ALPHA_3 = "ISL"
      COUNTRY_CODE = "354"
      NAME = "Iceland"
      UN_OFFICIAL_NAMES = %w[Iceland Island Islande Islandia アイスランド IJsland].freeze
    end

    class EE
      ALPHA_2 = "EE"
      ALPHA_3 = "EST"
      COUNTRY_CODE = "372"
      NAME = "Estonia"
      UN_OFFICIAL_NAMES = %w[Estonia Estland Estonie エストニア].freeze
    end

    class LT
      ALPHA_2 = "LT"
      ALPHA_3 = "LTU"
      COUNTRY_CODE = "370"
      NAME = "Lithuania"
      UN_OFFICIAL_NAMES = %w[Lithuania Litauen Lituanie Lituania リトアニア Litouwen Літва Lietuva].freeze
    end

    class RS
      ALPHA_2 = "RS"
      ALPHA_3 = "SRB"
      COUNTRY_CODE = "381"
      NAME = "Serbia"
      UN_OFFICIAL_NAMES = %w[Serbia Serbien Serbie セルビア Servië].freeze
    end

    class AD
      ALPHA_2 = "AD"
      ALPHA_3 = "AND"
      COUNTRY_CODE = "376"
      NAME = "Andorra"
      UN_OFFICIAL_NAMES = %w[Andorre Andorra アンドラ].freeze
    end

    class HU
      ALPHA_2 = "HU"
      ALPHA_3 = "HUN"
      COUNTRY_CODE = "36"
      NAME = "Hungary"
      UN_OFFICIAL_NAMES = %w[Hungary Ungarn Hongrie Hungría ハンガリー Hongarije].freeze
    end

    class BE
      ALPHA_2 = "BE"
      ALPHA_3 = "BEL"
      COUNTRY_CODE = "32"
      NAME = "Belgium"
      UN_OFFICIAL_NAMES = %w[Belgium Belgien Belgique Bélgica ベルギー België].freeze
    end

    class PT
      ALPHA_2 = "PT"
      ALPHA_3 = "PRT"
      COUNTRY_CODE = "351"
      NAME = "Portugal"
      UN_OFFICIAL_NAMES = %w[Portugal ポルトガル].freeze
    end

    class GB
      ALPHA_2 = "GB"
      ALPHA_3 = "GBR"
      COUNTRY_CODE = "44"
      NAME = "United Kingdom of Great Britain and Northern Ireland"
      UN_OFFICIAL_NAMES = ["United Kingdom", "The United Kingdom", "Vereinigtes Königreich", "Royaume-Uni",
                           "Reino Unido", "イギリス", "Verenigd Koninkrijk", "Great Britain (UK)", "UK",
                           "Великобритания", "England", "Scotland", "Wales", "Northern Ireland",
                           "Great Britain"].freeze
    end

    class IM
      ALPHA_2 = "IM"
      ALPHA_3 = "IMN"
      COUNTRY_CODE = "44"
      NAME = "Isle of Man"
      UN_OFFICIAL_NAMES = ["Isle of Man", "Insel Man", "Île de Man", "Isla de Man", "マン島"].freeze
    end

    class SK
      ALPHA_2 = "SK"
      ALPHA_3 = "SVK"
      COUNTRY_CODE = "421"
      NAME = "Slovakia"
      UN_OFFICIAL_NAMES = ["Slovakia", "Slowakei", "Slovaquie", "República Eslovaca", "スロバキア", "Slowakije"].freeze
    end

    class HR
      ALPHA_2 = "HR"
      ALPHA_3 = "HRV"
      COUNTRY_CODE = "385"
      NAME = "Croatia"
      UN_OFFICIAL_NAMES = ["Croatia", "Kroatien", "Croatie", "Croacia", "クロアチア", "Kroatië", "Croatia (Hrvatska)"].freeze
    end

    class CZ
      ALPHA_2 = "CZ"
      ALPHA_3 = "CZE"
      COUNTRY_CODE = "420"
      NAME = "Czech Republic"
      UN_OFFICIAL_NAMES = ["Czech Republic", "Tschechische Republik", "République Tchèque", "República Checa",
                           "チェコ", "Tsjechië", "Czechia"].freeze
    end

    class IT
      ALPHA_2 = "IT"
      ALPHA_3 = "ITA"
      COUNTRY_CODE = "39"
      NAME = "Italy"
      UN_OFFICIAL_NAMES = %w[Italy Italien Italie Italia イタリア Italië].freeze
    end

    class FI
      ALPHA_2 = "FI"
      ALPHA_3 = "FIN"
      COUNTRY_CODE = "358"
      NAME = "Finland"
      UN_OFFICIAL_NAMES = %w[Finland Finnland Finlande Finlandia フィンランド].freeze
    end

    class VA
      ALPHA_2 = "VA"
      ALPHA_3 = "VAT"
      COUNTRY_CODE = "39"
      NAME = "Holy See"
      UN_OFFICIAL_NAMES = ["Vatican City", "Vatikan", "Cité du Vatican", "Ciudad del Vaticano",
                           "バチカン市国", "Vaticaanstad", "Vatican City State (Holy See)"].freeze
    end

    class RU
      ALPHA_2 = "RU"
      ALPHA_3 = "RUS"
      COUNTRY_CODE = "7"
      NAME = "Russian Federation"
      UN_OFFICIAL_NAMES = %w[Russia Russland Russie Rusia ロシア連邦 Rusland Россия Расія].freeze
    end

    class PL
      ALPHA_2 = "PL"
      ALPHA_3 = "POL"
      COUNTRY_CODE = "48"
      NAME = "Poland"
      UN_OFFICIAL_NAMES = %w[Poland Polen Pologne Polonia ポーランド].freeze
    end

    class MT
      ALPHA_2 = "MT"
      ALPHA_3 = "MLT"
      COUNTRY_CODE = "356"
      NAME = "Malta"
      UN_OFFICIAL_NAMES = %w[Malta Malte マルタ].freeze
    end

    class DE
      ALPHA_2 = "DE"
      ALPHA_3 = "DEU"
      COUNTRY_CODE = "49"
      NAME = "Germany"
      UN_OFFICIAL_NAMES = %w[Germany Deutschland Allemagne Alemania ドイツ Duitsland].freeze
    end

    class SJ
      ALPHA_2 = "SJ"
      ALPHA_3 = "SJM"
      COUNTRY_CODE = "47"
      NAME = "Svalbard and Jan Mayen"
      UN_OFFICIAL_NAMES = ["Svalbard and Jan Mayen", "Svalbard und Jan Mayen", "Îles Svalbard et Jan Mayen",
                           "Islas Svalbard y Jan Mayen", "スヴァールバル諸島およびヤンマイエン島",
                           "Svalbard en Jan Mayen"].freeze
    end

    class SI
      ALPHA_2 = "SI"
      ALPHA_3 = "SVN"
      COUNTRY_CODE = "386"
      NAME = "Slovenia"
      UN_OFFICIAL_NAMES = %w[Slovenia Slowenien Slovénie Eslovenia スロベニア Slovenië].freeze
    end

    class AX
      ALPHA_2 = "AX"
      ALPHA_3 = "ALA"
      COUNTRY_CODE = "358"
      NAME = "Åland Islands"
      UN_OFFICIAL_NAMES = ["Åland Islands", "Åland", "オーランド諸島", "Ålandeilanden"].freeze
    end

    class RO
      ALPHA_2 = "RO"
      ALPHA_3 = "ROU"
      COUNTRY_CODE = "40"
      NAME = "Romania"
      UN_OFFICIAL_NAMES = %w[Romania Rumänien Roumanie Rumania ルーマニア Roemenië].freeze
    end

    class BG
      ALPHA_2 = "BG"
      ALPHA_3 = "BGR"
      COUNTRY_CODE = "359"
      NAME = "Bulgaria"
      UN_OFFICIAL_NAMES = %w[Bulgaria Bulgarien Bulgarie ブルガリア Bulgarije].freeze
    end

    class JE
      ALPHA_2 = "JE"
      ALPHA_3 = "JEY"
      COUNTRY_CODE = "44"
      NAME = "Jersey"
      UN_OFFICIAL_NAMES = %w[Jersey ジャージー].freeze
    end

    class AT
      ALPHA_2 = "AT"
      ALPHA_3 = "AUT"
      COUNTRY_CODE = "43"
      NAME = "Austria"
      UN_OFFICIAL_NAMES = %w[Austria Österreich Autriche オーストリア Oostenrijk].freeze
    end

    class SE
      ALPHA_2 = "SE"
      ALPHA_3 = "SWE"
      COUNTRY_CODE = "46"
      NAME = "Sweden"
      UN_OFFICIAL_NAMES = %w[Sweden Schweden Suède Suecia スウェーデン Zweden].freeze
    end

    class MC
      ALPHA_2 = "MC"
      ALPHA_3 = "MCO"
      COUNTRY_CODE = "377"
      NAME = "Monaco"
      UN_OFFICIAL_NAMES = %w[Monaco Mónaco モナコ].freeze
    end

    class DK
      ALPHA_2 = "DK"
      ALPHA_3 = "DNK"
      COUNTRY_CODE = "45"
      NAME = "Denmark"
      UN_OFFICIAL_NAMES = %w[Denmark Dänemark Danemark Dinamarca デンマーク Denemarken].freeze
    end

    class FR
      ALPHA_2 = "FR"
      ALPHA_3 = "FRA"
      COUNTRY_CODE = "33"
      NAME = "France"
      UN_OFFICIAL_NAMES = ["France", "Frankreich", "the French Republic", "フランス", "Frankrijk", "Francia"].freeze
    end

    class AL
      ALPHA_2 = "AL"
      ALPHA_3 = "ALB"
      COUNTRY_CODE = "355"
      NAME = "Albania"
      UN_OFFICIAL_NAMES = %w[Albania Albanien Albanie アルバニア Albanië].freeze
    end

    class LI
      ALPHA_2 = "LI"
      ALPHA_3 = "LIE"
      COUNTRY_CODE = "423"
      NAME = "Liechtenstein"
      UN_OFFICIAL_NAMES = %w[Liechtenstein リヒテンシュタイン].freeze
    end

    class MD
      ALPHA_2 = "MD"
      ALPHA_3 = "MDA"
      COUNTRY_CODE = "373"
      NAME = "Moldova (Republic of)"
      UN_OFFICIAL_NAMES = ["Moldova", "Moldawien", "Moldavie", "Moldavia", "the Republic of Moldova", "モルドバ共和国",
                           "Moldavië"].freeze
    end

    class IE
      ALPHA_2 = "IE"
      ALPHA_3 = "IRL"
      COUNTRY_CODE = "353"
      NAME = "Ireland"
      UN_OFFICIAL_NAMES = %w[Ireland Irland Irlande Irlanda アイルランド Ierland].freeze
    end

    class ES
      ALPHA_2 = "ES"
      ALPHA_3 = "ESP"
      COUNTRY_CODE = "34"
      NAME = "Spain"
      UN_OFFICIAL_NAMES = %w[Spain Spanien Espagne España スペイン Spanje].freeze
    end

    class BA
      ALPHA_2 = "BA"
      ALPHA_3 = "BIH"
      COUNTRY_CODE = "387"
      NAME = "Bosnia and Herzegovina"
      UN_OFFICIAL_NAMES = ["Bosnia and Herzegovina", "Bosnien und Herzegowina",
                           "Bosnie et Herzégovine", "Bosnia y Herzegovina",
                           "ボスニア・ヘルツェゴビナ", "Bosnië en Herzegovina", "Bosnia Herzegovina"].freeze
    end

    class GR
      ALPHA_2 = "GR"
      ALPHA_3 = "GRC"
      COUNTRY_CODE = "30"
      NAME = "Greece"
      UN_OFFICIAL_NAMES = %w[Greece Griechenland Grèce Grecia ギリシャ Griekenland].freeze
    end

    class GG
      ALPHA_2 = "GG"
      ALPHA_3 = "GGY"
      COUNTRY_CODE = "44"
      NAME = "Guernsey"
      UN_OFFICIAL_NAMES = ["Guernsey and Alderney", "Guernsey und Alderney",
                           "Guernsey et Alderney", "Guernsey y Alderney",
                           "ガーンジー", "Guernsey"].freeze
    end

    class BY
      ALPHA_2 = "BY"
      ALPHA_3 = "BLR"
      COUNTRY_CODE = "375"
      NAME = "Belarus"
      UN_OFFICIAL_NAMES = %w[Belarus Weißrussland Biélorussie Bielorrusia ベラルーシ Wit-Rusland Беларусь].freeze
    end

    class LV
      ALPHA_2 = "LV"
      ALPHA_3 = "LVA"
      COUNTRY_CODE = "371"
      NAME = "Latvia"
      UN_OFFICIAL_NAMES = %w[Latvia Lettland Lettonie Letonia ラトビア Letland].freeze
    end

    class NO
      ALPHA_2 = "NO"
      ALPHA_3 = "NOR"
      COUNTRY_CODE = "47"
      NAME = "Norway"
      UN_OFFICIAL_NAMES = %w[Norway Norwegen Norvège Noruega ノルウェー Noorwegen].freeze
    end

    class ME
      ALPHA_2 = "ME"
      ALPHA_3 = "MNE"
      COUNTRY_CODE = "382"
      NAME = "Montenegro"
      UN_OFFICIAL_NAMES = ["Crna Gora", "Montenegro", "モンテネグロ"].freeze
    end
  end
end
