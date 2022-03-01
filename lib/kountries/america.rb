# frozen_string_literal: true

module Kountries
  # America
  module America
    def self.find_country_by_name(name)
      constants.each do |country|
        american_country_class = Module.const_get "Kountries::America::#{country}"
        return as_struct(american_country_class) if american_country_class::NAME.upcase == name.upcase
        return as_struct(american_country_class) if american_country_class::UN_OFFICIAL_NAMES.include?(name.capitalize)
      end

      empty_struct
    end

    def self.find_country_by_code(code)
      return empty_struct unless Kountries::America.constants.include?(code.intern)

      american_country_class = Module.const_get "Kountries::America::#{code}"
      return as_struct(american_country_class) if american_country_class::ALPHA_2 == code
    end

    def self.as_struct(american_country_class)
      OpenStruct.new(
        alpha2: american_country_class::ALPHA_2,
        alpha3: american_country_class::ALPHA_3,
        country_code: american_country_class::COUNTRY_CODE,
        name: american_country_class::NAME,
        unofficial_names: american_country_class::UN_OFFICIAL_NAMES
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

    class JM
      ALPHA_2 = "JM"
      ALPHA_3 = "JAM"
      COUNTRY_CODE = "1"
      NAME = "Jamaica"
      UN_OFFICIAL_NAMES = %w[Jamaica Jamaika Jamaïque ジャマイカ].freeze
    end

    class HT
      ALPHA_2 = "HT"
      ALPHA_3 = "HTI"
      COUNTRY_CODE = "509"
      NAME = "Haiti"
      UN_OFFICIAL_NAMES = %w[Haiti ハイチ Haïti].freeze
    end

    class MS
      ALPHA_2 = "MS"
      ALPHA_3 = "MSR"
      COUNTRY_CODE = "1"
      NAME = "Montserrat"
      UN_OFFICIAL_NAMES = %w[Montserrat モントセラト].freeze
    end

    class BZ
      ALPHA_2 = "BZ"
      ALPHA_3 = "BLZ"
      COUNTRY_CODE = "501"
      NAME = "Belize"
      UN_OFFICIAL_NAMES = %w[Belize Belice ベリーズ].freeze
    end

    class BO
      ALPHA_2 = "BO"
      ALPHA_3 = "BOL"
      COUNTRY_CODE = "591"
      NAME = "Bolivia (Plurinational State of)"
      UN_OFFICIAL_NAMES = %w[Bolivia Bolivien Bolivie ボリビア多民族国].freeze
    end

    class UY
      ALPHA_2 = "UY"
      ALPHA_3 = "URY"
      COUNTRY_CODE = "598"
      NAME = "Uruguay"
      UN_OFFICIAL_NAMES = %w[Uruguay ウルグアイ].freeze
    end

    class MF
      ALPHA_2 = "MF"
      ALPHA_3 = "MAF"
      COUNTRY_CODE = "590"
      NAME = "Saint Martin (French part)"
      UN_OFFICIAL_NAMES = ["Saint Martin", "サン・マルタン（フランス領）", "Saint-Martin"].freeze
    end

    class AI
      ALPHA_2 = "AI"
      ALPHA_3 = "AIA"
      COUNTRY_CODE = "1"
      NAME = "Anguilla"
      UN_OFFICIAL_NAMES = %w[Anguilla アンギラ].freeze
    end

    class SX
      ALPHA_2 = "SX"
      ALPHA_3 = "SXM"
      COUNTRY_CODE = "1"
      NAME = "Sint Maarten (Dutch part)"
      UN_OFFICIAL_NAMES = ["Sint Maarten", "セント・マーチン島"].freeze
    end

    class PR
      ALPHA_2 = "PR"
      ALPHA_3 = "PRI"
      COUNTRY_CODE = "1"
      NAME = "Puerto Rico"
      UN_OFFICIAL_NAMES = ["Puerto Rico", "プエルトリコ"].freeze
    end

    class GD
      ALPHA_2 = "GD"
      ALPHA_3 = "GRD"
      COUNTRY_CODE = "1"
      NAME = "Grenada"
      UN_OFFICIAL_NAMES = %w[Grenada グレナダ].freeze
    end

    class BB
      ALPHA_2 = "BB"
      ALPHA_3 = "BRB"
      COUNTRY_CODE = "1"
      NAME = "Barbados"
      UN_OFFICIAL_NAMES = %w[Barbade Barbados バルバドス].freeze
    end

    class GP
      ALPHA_2 = "GP"
      ALPHA_3 = "GLP"
      COUNTRY_CODE = "590"
      NAME = "Guadeloupe"
      UN_OFFICIAL_NAMES = %w[Guadeloupe Guadalupe グアドループ].freeze
    end

    class DO
      ALPHA_2 = "DO"
      ALPHA_3 = "DOM"
      COUNTRY_CODE = "1"
      NAME = "Dominican Republic"
      UN_OFFICIAL_NAMES = ["Dominican Republic", "Dominikanische Republik", "République Dominicaine",
                           "República Dominicana", "ドミニカ共和国",
                           "Dominicaanse Republiek"].freeze
    end

    class VG
      ALPHA_2 = "VG"
      ALPHA_3 = "VGB"
      COUNTRY_CODE = "1"
      NAME = "Virgin Islands (British)"
      UN_OFFICIAL_NAMES = ["British Virgin Islands", "Britische Jungferninseln", "Îles Vierges britanniques",
                           "Islas Vírgenes del Reino Unido", "イギリス領ヴァージン諸島", "Britse Maagdeneilanden",
                           "Virgin Islands (British)"].freeze
    end

    class UM
      ALPHA_2 = "UM"
      ALPHA_3 = "UMI"
      COUNTRY_CODE = "1"
      NAME = "United States Minor Outlying Islands"
      UN_OFFICIAL_NAMES = ["United States Minor Outlying Islands", "US-Amerikanische Hoheitsgebiete",
                           "Dépendances américaines", "Islas menores de Estados Unidos", "合衆国領有小離島",
                           "Kleine afgelegen eilanden van de Verenigde Staten"].freeze
    end

    class PA
      ALPHA_2 = "PA"
      ALPHA_3 = "PAN"
      COUNTRY_CODE = "507"
      NAME = "Panama"
      UN_OFFICIAL_NAMES = %w[Panama Panamá パナマ].freeze
    end

    class US
      ALPHA_2 = "US"
      ALPHA_3 = "USA"
      COUNTRY_CODE = "1"
      NAME = "United States of America"
      UN_OFFICIAL_NAMES = ["United States", "Murica", "Vereinigte Staaten von Amerika",
                           "États-Unis", "Estados Unidos", "アメリカ合衆国",
                           "Verenigde Staten"].freeze
    end

    class SR
      ALPHA_2 = "SR"
      ALPHA_3 = "SUR"
      COUNTRY_CODE = "597"
      NAME = "Suriname"
      UN_OFFICIAL_NAMES = %w[Suriname Surinam スリナム].freeze
    end

    class PM
      ALPHA_2 = "PM"
      ALPHA_3 = "SPM"
      COUNTRY_CODE = "508"
      NAME = "Saint Pierre and Miquelon"
      UN_OFFICIAL_NAMES = ["Saint Pierre and Miquelon", "Saint-Pierre und Miquelon",
                           "Saint-Pierre-et-Miquelon", "San Pedro y Miquelón",
                           "サンピエール島・ミクロン島", "Saint Pierre en Miquelon"].freeze
    end

    class CO
      ALPHA_2 = "CO"
      ALPHA_3 = "COL"
      COUNTRY_CODE = "57"
      NAME = "Colombia"
      UN_OFFICIAL_NAMES = %w[Colombia Kolumbien Colombie コロンビア].freeze
    end

    class AW
      ALPHA_2 = "AW"
      ALPHA_3 = "ABW"
      COUNTRY_CODE = "297"
      NAME = "Aruba"
      UN_OFFICIAL_NAMES = %w[Aruba アルバ].freeze
    end

    class KY
      ALPHA_2 = "KY"
      ALPHA_3 = "CYM"
      COUNTRY_CODE = "1"
      NAME = "Cayman Islands"
      UN_OFFICIAL_NAMES = ["Cayman Islands", "Kaimaninseln", "Îles Caïmans", "Islas Caimán", "ケイマン諸島",
                           "Caymaneilanden"].freeze
    end

    class PY
      ALPHA_2 = "PY"
      ALPHA_3 = "PRY"
      COUNTRY_CODE = "595"
      NAME = "Paraguay"
      UN_OFFICIAL_NAMES = %w[Paraguay パラグアイ].freeze
    end

    class EC
      ALPHA_2 = "EC"
      ALPHA_3 = "ECU"
      COUNTRY_CODE = "593"
      NAME = "Ecuador"
      UN_OFFICIAL_NAMES = %w[Ecuador Équateur エクアドル].freeze
    end

    class TT
      ALPHA_2 = "TT"
      ALPHA_3 = "TTO"
      COUNTRY_CODE = "1"
      NAME = "Trinidad and Tobago"
      UN_OFFICIAL_NAMES = ["Trinidad and Tobago", "Trinidad und Tobago", "Trinité et Tobago",
                           "Trinidad y Tobago", "トリニダード・トバゴ",
                           "Trinidad en Tobago"].freeze
    end

    class BQ
      ALPHA_2 = "BQ"
      ALPHA_3 = "BES"
      COUNTRY_CODE = "599"
      NAME = "Bonaire, Sint Eustatius and Saba"
      UN_OFFICIAL_NAMES = ["Bonaire, Sint Eustatius and Saba", "Caribbean Netherlands", "Caribisch Nederland",
                           "ボネール、シント・ユースタティウスおよびサバ"].freeze
    end

    class MX
      ALPHA_2 = "MX"
      ALPHA_3 = "MEX"
      COUNTRY_CODE = "52"
      NAME = "Mexico"
      UN_OFFICIAL_NAMES = %w[Mexico Mexiko Mexique México メキシコ].freeze
    end

    class CW
      ALPHA_2 = "CW"
      ALPHA_3 = "CUW"
      COUNTRY_CODE = "599"
      NAME = "Curaçao"
      UN_OFFICIAL_NAMES = %w[Curaçao キュラソー島].freeze
    end

    class CA
      ALPHA_2 = "CA"
      ALPHA_3 = "CAN"
      COUNTRY_CODE = "1"
      NAME = "Canada"
      UN_OFFICIAL_NAMES = %w[Canada Kanada Canadá カナダ].freeze
    end

    class BR
      ALPHA_2 = "BR"
      ALPHA_3 = "BRA"
      COUNTRY_CODE = "55"
      NAME = "Brazil"
      UN_OFFICIAL_NAMES = %w[Brazil Brasilien Brésil Brasil ブラジル Brazilië].freeze
    end

    class GL
      ALPHA_2 = "GL"
      ALPHA_3 = "GRL"
      COUNTRY_CODE = "299"
      NAME = "Greenland"
      UN_OFFICIAL_NAMES = %w[Greenland Grönland Groenland Groenlandia グリーンランド].freeze
    end

    class GY
      ALPHA_2 = "GY"
      ALPHA_3 = "GUY"
      COUNTRY_CODE = "592"
      NAME = "Guyana"
      UN_OFFICIAL_NAMES = %w[Guyana ガイアナ].freeze
    end

    class NI
      ALPHA_2 = "NI"
      ALPHA_3 = "NIC"
      COUNTRY_CODE = "505"
      NAME = "Nicaragua"
      UN_OFFICIAL_NAMES = %w[Nicaragua ニカラグア].freeze
    end

    class KN
      ALPHA_2 = "KN"
      ALPHA_3 = "KNA"
      COUNTRY_CODE = "1"
      NAME = "Saint Kitts and Nevis"
      UN_OFFICIAL_NAMES = ["Saint Kitts and Nevis", "Föderation St. Kitts und Nevis",
                           "Saint Kitts et Nevis", "Saint Kitts y Nevis",
                           "セントクリストファー・ネイビス", "Saint Kitts en Nevis",
                           "St. Kitts and Nevis", "St Kitts and Nevis"].freeze
    end

    class VC
      ALPHA_2 = "VC"
      ALPHA_3 = "VCT"
      COUNTRY_CODE = "1"
      NAME = "Saint Vincent and the Grenadines"
      UN_OFFICIAL_NAMES = ["Saint Vincent and the Grenadines", "Saint Vincent und die Grenadinen",
                           "Saint-Vincent et les Grenadines", "San Vicente y Granadinas",
                           "セントビンセントおよびグレナディーン諸島", "Saint Vincent en de Grenadines",
                           "St. Vincent Grenadines", "St Vincent Grenadines"].freeze
    end

    class FK
      ALPHA_2 = "FK"
      ALPHA_3 = "FLK"
      COUNTRY_CODE = "500"
      NAME = "Falkland Islands (Malvinas)"
      UN_OFFICIAL_NAMES = ["Falkland Islands", "Falklandinseln", "Îles Malouines", "Islas Malvinas", "フォークランド（マルビナス）諸島",
                           "Falklandeilanden [Islas Malvinas]"].freeze
    end

    class CL
      ALPHA_2 = "CL"
      ALPHA_3 = "CHL"
      COUNTRY_CODE = "56"
      NAME = "Chile"
      UN_OFFICIAL_NAMES = %w[Chile チリ Chili].freeze
    end

    class TC
      ALPHA_2 = "TC"
      ALPHA_3 = "TCA"
      COUNTRY_CODE = "1"
      NAME = "Turks and Caicos Islands"
      UN_OFFICIAL_NAMES = ["Turks and Caicos Islands", "Turks- und Caicosinseln", "Îles Turks et Caïcos",
                           "Islas Turks y Caicos", "タークス・カイコス諸島", "Turks- en Caicoseilanden",
                           "Turks and Caicos"].freeze
    end

    class CU
      ALPHA_2 = "CU"
      ALPHA_3 = "CUB"
      COUNTRY_CODE = "53"
      NAME = "Cuba"
      UN_OFFICIAL_NAMES = %w[Cuba Kuba キューバ].freeze
    end

    class BS
      ALPHA_2 = "BS"
      ALPHA_3 = "BHS"
      COUNTRY_CODE = "1"
      NAME = "Bahamas"
      UN_OFFICIAL_NAMES = ["Bahamas", "バハマ", "Bahama’s"].freeze
    end

    class GT
      ALPHA_2 = "GT"
      ALPHA_3 = "GTM"
      COUNTRY_CODE = "502"
      NAME = "Guatemala"
      UN_OFFICIAL_NAMES = %w[Guatemala グアテマラ].freeze
    end

    class AR
      ALPHA_2 = "AR"
      ALPHA_3 = "ARG"
      COUNTRY_CODE = "54"
      NAME = "Argentina"
      UN_OFFICIAL_NAMES = %w[Argentina Argentinien Argentine アルゼンチン Argentinië].freeze
    end

    class BM
      ALPHA_2 = "BM"
      ALPHA_3 = "BMU"
      COUNTRY_CODE = "1"
      NAME = "Bermuda"
      UN_OFFICIAL_NAMES = %w[Bermuda Bermudes Bermudas バミューダ].freeze
    end

    class AG
      ALPHA_2 = "AG"
      ALPHA_3 = "ATG"
      COUNTRY_CODE = "1"
      NAME = "Antigua and Barbuda"
      UN_OFFICIAL_NAMES = ["Antigua and Barbuda", "Antigua und Barbuda", "Antigua et Barbuda",
                           "Antigua y Barbuda", "アンティグア・バーブーダ",
                           "Antigua en Barbuda"].freeze
    end

    class MQ
      ALPHA_2 = "MQ"
      ALPHA_3 = "MTQ"
      COUNTRY_CODE = "596"
      NAME = "Martinique"
      UN_OFFICIAL_NAMES = %w[Martinique Martinica マルティニーク].freeze
    end

    class SV
      ALPHA_2 = "SV"
      ALPHA_3 = "SLV"
      COUNTRY_CODE = "503"
      NAME = "El Salvador"
      UN_OFFICIAL_NAMES = ["El Salvador", "Salvador", "エルサルバドル"].freeze
    end

    class GF
      ALPHA_2 = "GF"
      ALPHA_3 = "GUF"
      COUNTRY_CODE = "594"
      NAME = "French Guiana"
      UN_OFFICIAL_NAMES = ["French Guiana", "Französisch Guyana", "Guayana Francesa", "フランス領ギアナ", "Frans-Guyana"].freeze
    end

    class GS
      ALPHA_2 = "GS"
      ALPHA_3 = "SGS"
      COUNTRY_CODE = "500"
      NAME = "South Georgia and the South Sandwich Islands"
      UN_OFFICIAL_NAMES = ["South Georgia", "South Georgia and the South Sandwich Islands",
                           "Südgeorgien und die Südlichen Sandwichinseln",
                           "サウスジョージア・サウスサンドウィッチ諸島", "Zuid-Georgia en Zuidelijke Sandwicheilanden"].freeze
    end

    class PE
      ALPHA_2 = "PE"
      ALPHA_3 = "PER"
      COUNTRY_CODE = "51"
      NAME = "Peru"
      UN_OFFICIAL_NAMES = %w[Peru Pérou Perú ペルー].freeze
    end

    class CR
      ALPHA_2 = "CR"
      ALPHA_3 = "CRI"
      COUNTRY_CODE = "506"
      NAME = "Costa Rica"
      UN_OFFICIAL_NAMES = ["Costa Rica", "コスタリカ"].freeze
    end

    class DM
      ALPHA_2 = "DM"
      ALPHA_3 = "DMA"
      COUNTRY_CODE = "1"
      NAME = "Dominica"
      UN_OFFICIAL_NAMES = %w[Dominica ドミニカ国].freeze
    end

    class HN
      ALPHA_2 = "HN"
      ALPHA_3 = "HND"
      COUNTRY_CODE = "504"
      NAME = "Honduras"
      UN_OFFICIAL_NAMES = %w[Honduras ホンジュラス].freeze
    end

    class VI
      ALPHA_2 = "VI"
      ALPHA_3 = "VIR"
      COUNTRY_CODE = "1"
      NAME = "Virgin Islands (U.S.)"
      UN_OFFICIAL_NAMES = ["Virgin Islands of the United States", "Amerikanische Jungferninseln",
                           "Îles Vierges américaines", "Islas Vírgenes de los Estados Unidos",
                           "アメリカ領ヴァージン諸島", "Amerikaanse Maagdeneilanden",
                           "Virgin Islands (U.S.)", "United States Virgin Islands"].freeze
    end

    class LC
      ALPHA_2 = "LC"
      ALPHA_3 = "LCA"
      COUNTRY_CODE = "1"
      NAME = "Saint Lucia"
      UN_OFFICIAL_NAMES = ["Saint Lucia", "Saint-Lucie", "Santa Lucía", "セントルシア", "St. Lucia", "St Lucia"].freeze
    end

    class BL
      ALPHA_2 = "BL"
      ALPHA_3 = "BLM"
      COUNTRY_CODE = "590"
      NAME = "Saint Barthélemy"
      UN_OFFICIAL_NAMES = ["Saint Barthélemy", "Saint-Barthélemy", "サン・バルテルミー"].freeze
    end

    class VE
      ALPHA_2 = "VE"
      ALPHA_3 = "VEN"
      COUNTRY_CODE = "58"
      NAME = "Venezuela (Bolivarian Republic of)"
      UN_OFFICIAL_NAMES = ["Venezuela", "ベネズエラ・ボリバル共和国"].freeze
    end
  end
end
