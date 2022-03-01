# frozen_string_literal: true

require "ostruct"

module Kountries
  # Africa
  module Africa
    def self.find_country_by_name(name)
      constants.each do |country|
        african_country_class = Module.const_get "Kountries::Africa::#{country}"
        return as_struct(african_country_class) if african_country_class::NAME.upcase == name.upcase
        return as_struct(african_country_class) if african_country_class::UN_OFFICIAL_NAMES.include?(name.capitalize)
      end

      empty_struct
    end

    def self.find_country_by_code(code)
      return empty_struct unless Kountries::Africa.constants.include?(code.intern)

      african_country_class = Module.const_get "Kountries::Africa::#{code}"
      return as_struct(african_country_class) if african_country_class::ALPHA_2 == code
    end

    def self.as_struct(african_country_class)
      OpenStruct.new(
        alpha2: african_country_class::ALPHA_2,
        alpha3: african_country_class::ALPHA_3,
        country_code: african_country_class::COUNTRY_CODE,
        name: african_country_class::NAME,
        unofficial_names: african_country_class::UN_OFFICIAL_NAMES
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

    class ST
      ALPHA_2 = "ST"
      ALPHA_3 = "STP"
      COUNTRY_CODE = "239"
      NAME = "Sao Tome and Principe"
      UN_OFFICIAL_NAMES = ["São Tomé and Príncipe", "São Tomé und Príncipe", "São Tomé et Príncipe",
                           "Santo Tomé y Príncipe", "サントメ・プリンシペ",
                           "Sao Tomé en Principe"].freeze
    end

    class GH
      ALPHA_2 = "GH"
      ALPHA_3 = "GHA"
      COUNTRY_CODE = "233"
      NAME = "Ghana"
      UN_OFFICIAL_NAMES = %w[Ghana ガーナ].freeze
    end

    class CI
      ALPHA_2 = "CI"
      ALPHA_3 = "CIV"
      COUNTRY_CODE = "225"
      NAME = "Côte d'Ivoire"
      UN_OFFICIAL_NAMES = ["Côte D'Ivoire", "Elfenbeinküste", "コートジボワール", "Ivoorkust", "Cote D'Ivoire (Ivory Coast)",
                           "Cote d Ivoire (Ivory Coast)", "Ivory Coast"].freeze
    end

    class LY
      ALPHA_2 = "LY"
      ALPHA_3 = "LBY"
      COUNTRY_CODE = "218"
      NAME = "Libya"
      UN_OFFICIAL_NAMES = ["Libya", "ليبيا", "Libyen", "Libye", "Libia", "リビア", "Libië",
                           "Libyan Arab Jamahiriya"].freeze
    end

    class GQ
      ALPHA_2 = "GQ"
      ALPHA_3 = "GNQ"
      COUNTRY_CODE = "240"
      NAME = "Equatorial Guinea"
      UN_OFFICIAL_NAMES = ["Equatorial Guinea", "Äquatorial-Guinea", "Guinée Équatoriale", "Guinea Ecuatorial", "赤道ギニア",
                           "Equatoriaal-Guinea"].freeze
    end

    class EH
      ALPHA_2 = "EH"
      ALPHA_3 = "ESH"
      COUNTRY_CODE = "212"
      NAME = "Western Sahara"
      UN_OFFICIAL_NAMES = ["Western Sahara", "الصحراء الغربية", "Westsahara", "Sahara Occidental", "西サハラ",
                           "Westelijke Sahara"].freeze
    end

    class SL
      ALPHA_2 = "SL"
      ALPHA_3 = "SLE"
      COUNTRY_CODE = "232"
      NAME = "Sierra Leone"
      UN_OFFICIAL_NAMES = ["Sierra Leone", "シエラレオネ"].freeze
    end

    class CD
      ALPHA_2 = "CD"
      ALPHA_3 = "COD"
      COUNTRY_CODE = "243"
      NAME = "Congo (Democratic Republic of the)"
      UN_OFFICIAL_NAMES = ["Congo (Dem. Rep.)", "Kongo (Dem. Rep.)", "Congo (Rep. Dem.)", "コンゴ民主共和国", "Congo [DRC]",
                           "Congo (The Democratic Republic Of The)", "Democratic Republic of the Congo",
                           "Congo, Democratic Republic of"].freeze
    end

    class DZ
      ALPHA_2 = "DZ"
      ALPHA_3 = "DZA"
      COUNTRY_CODE = "213"
      NAME = "Algeria"
      UN_OFFICIAL_NAMES = %w[Algeria الجزائر Algerien Algérie Argelia アルジェリア Algerije].freeze
    end

    class NA
      ALPHA_2 = "NA"
      ALPHA_3 = "NAM"
      COUNTRY_CODE = "264"
      NAME = "Namibia"
      UN_OFFICIAL_NAMES = %w[Namibia Namibie ナミビア Namibië].freeze
    end

    class BW
      ALPHA_2 = "BW"
      ALPHA_3 = "BWA"
      COUNTRY_CODE = "267"
      NAME = "Botswana"
      UN_OFFICIAL_NAMES = %w[Botswana ボツワナ].freeze
    end

    class TG
      ALPHA_2 = "TG"
      ALPHA_3 = "TGO"
      COUNTRY_CODE = "228"
      NAME = "Togo"
      UN_OFFICIAL_NAMES = %w[Togo トーゴ].freeze
    end

    class MG
      ALPHA_2 = "MG"
      ALPHA_3 = "MDG"
      COUNTRY_CODE = "261"
      NAME = "Madagascar"
      UN_OFFICIAL_NAMES = ["Madagascar", "Madagaskar", "the Republic of Madagascar", "マダガスカル"].freeze
    end

    class MR
      ALPHA_2 = "MR"
      ALPHA_3 = "MRT"
      COUNTRY_CODE = "222"
      NAME = "Mauritania"
      UN_OFFICIAL_NAMES = %w[Mauritania موريتانيا Mauretanien Mauritanie モーリタニア Mauritanië].freeze
    end

    class AO
      ALPHA_2 = "AO"
      ALPHA_3 = "AGO"
      COUNTRY_CODE = "244"
      NAME = "Angola"
      UN_OFFICIAL_NAMES = %w[Angola アンゴラ].freeze
    end

    class CV
      ALPHA_2 = "CV"
      ALPHA_3 = "CPV"
      COUNTRY_CODE = "238"
      NAME = "Cabo Verde"
      UN_OFFICIAL_NAMES = ["Cape Verde", "Kap Verde", "Cap Vert", "Cabo Verde", "カーボベルデ", "Kaapverdië"].freeze
    end

    class GW
      ALPHA_2 = "GW"
      ALPHA_3 = "GNB"
      COUNTRY_CODE = "245"
      NAME = "Guinea-Bissau"
      UN_OFFICIAL_NAMES = ["Guinea-Bissau", "Guinée-Bissau", "ギニアビサウ", "Guinee-Bissau", "Guinea Bissau"].freeze
    end

    class ML
      ALPHA_2 = "ML"
      ALPHA_3 = "MLI"
      COUNTRY_CODE = "223"
      NAME = "Mali"
      UN_OFFICIAL_NAMES = %w[Mali マリ].freeze
    end

    class MU
      ALPHA_2 = "MU"
      ALPHA_3 = "MUS"
      COUNTRY_CODE = "230"
      NAME = "Mauritius"
      UN_OFFICIAL_NAMES = ["Mauritius", "Île Maurice", "Mauricio", "モーリシャス"].freeze
    end

    class LS
      ALPHA_2 = "LS"
      ALPHA_3 = "LSO"
      COUNTRY_CODE = "266"
      NAME = "Lesotho"
      UN_OFFICIAL_NAMES = %w[Lesotho レソト].freeze
    end

    class KM
      ALPHA_2 = "KM"
      ALPHA_3 = "COM"
      COUNTRY_CODE = "269"
      NAME = "Comoros"
      UN_OFFICIAL_NAMES = ["Comoros", "Union der Komoren", "Comores", "コモロ", "Comoren"].freeze
    end

    class BI
      ALPHA_2 = "BI"
      ALPHA_3 = "BDI"
      COUNTRY_CODE = "257"
      NAME = "Burundi"
      UN_OFFICIAL_NAMES = %w[Burundi ブルンジ].freeze
    end

    class GN
      ALPHA_2 = "GN"
      ALPHA_3 = "GIN"
      COUNTRY_CODE = "224"
      NAME = "Guinea"
      UN_OFFICIAL_NAMES = %w[Guinea Guinée ギニア Guinee].freeze
    end

    class MA
      ALPHA_2 = "MA"
      ALPHA_3 = "MAR"
      COUNTRY_CODE = "212"
      NAME = "Morocco"
      UN_OFFICIAL_NAMES = %w[Morocco المغرب Marokko Maroc Marruecos モロッコ].freeze
    end

    class ZW
      ALPHA_2 = "ZW"
      ALPHA_3 = "ZWE"
      COUNTRY_CODE = "263"
      NAME = "Zimbabwe"
      UN_OFFICIAL_NAMES = %w[Zimbabwe Simbabwe Zimbabue ジンバブエ].freeze
    end

    class LR
      ALPHA_2 = "LR"
      ALPHA_3 = "LBR"
      COUNTRY_CODE = "231"
      NAME = "Liberia"
      UN_OFFICIAL_NAMES = %w[Liberia リベリア].freeze
    end

    class SS
      ALPHA_2 = "SS"
      ALPHA_3 = "SSD"
      COUNTRY_CODE = "211"
      NAME = "South Sudan"
      UN_OFFICIAL_NAMES = ["South Sudan", "Südsudan", "南スーダン", "Zuid-Soedan"].freeze
    end

    class UG
      ALPHA_2 = "UG"
      ALPHA_3 = "UGA"
      COUNTRY_CODE = "256"
      NAME = "Uganda"
      UN_OFFICIAL_NAMES = %w[Uganda ウガンダ Oeganda].freeze
    end

    class NG
      ALPHA_2 = "NG"
      ALPHA_3 = "NGA"
      COUNTRY_CODE = "234"
      NAME = "Nigeria"
      UN_OFFICIAL_NAMES = ["Nigeria", "Nigéria", "the Federal Republic of Nigeria", "ナイジェリア"].freeze
    end

    class IO
      ALPHA_2 = "IO"
      ALPHA_3 = "IOT"
      COUNTRY_CODE = "246"
      NAME = "British Indian Ocean Territory"
      UN_OFFICIAL_NAMES = ["British Indian Ocean Territory", "Britisches Territorium im Indischen Ozean", "イギリス領インド洋地域",
                           "Britse Gebieden in de Indische Oceaan"].freeze
    end

    class ZM
      ALPHA_2 = "ZM"
      ALPHA_3 = "ZMB"
      COUNTRY_CODE = "260"
      NAME = "Zambia"
      UN_OFFICIAL_NAMES = %w[Zambia Sambia Zambie ザンビア].freeze
    end

    class DJ
      ALPHA_2 = "DJ"
      ALPHA_3 = "DJI"
      COUNTRY_CODE = "253"
      NAME = "Djibouti"
      UN_OFFICIAL_NAMES = %w[Djibouti جيبوتي Dschibuti ジブチ].freeze
    end

    class CM
      ALPHA_2 = "CM"
      ALPHA_3 = "CMR"
      COUNTRY_CODE = "237"
      NAME = "Cameroon"
      UN_OFFICIAL_NAMES = %w[Cameroon Kamerun Cameroun Camerún カメルーン Kameroen].freeze
    end

    class MW
      ALPHA_2 = "MW"
      ALPHA_3 = "MWI"
      COUNTRY_CODE = "265"
      NAME = "Malawi"
      UN_OFFICIAL_NAMES = %w[Malawi マラウイ].freeze
    end

    class TN
      ALPHA_2 = "TN"
      ALPHA_3 = "TUN"
      COUNTRY_CODE = "216"
      NAME = "Tunisia"
      UN_OFFICIAL_NAMES = %w[Tunisia تونس Tunesien Tunisie Túnez チュニジア Tunesië].freeze
    end

    class ZA
      ALPHA_2 = "ZA"
      ALPHA_3 = "ZAF"
      COUNTRY_CODE = "27"
      NAME = "South Africa"
      UN_OFFICIAL_NAMES = ["South Africa", "Republik Südafrika", "Afrique du Sud", "República de Sudáfrica", "南アフリカ",
                           "Zuid-Afrika"].freeze
    end

    class RW
      ALPHA_2 = "RW"
      ALPHA_3 = "RWA"
      COUNTRY_CODE = "250"
      NAME = "Rwanda"
      UN_OFFICIAL_NAMES = %w[Rwanda Ruanda ルワンダ].freeze
    end

    class BJ
      ALPHA_2 = "BJ"
      ALPHA_3 = "BEN"
      COUNTRY_CODE = "229"
      NAME = "Benin"
      UN_OFFICIAL_NAMES = %w[Benin Bénin ベナン].freeze
    end

    class ET
      ALPHA_2 = "ET"
      ALPHA_3 = "ETH"
      COUNTRY_CODE = "251"
      NAME = "Ethiopia"
      UN_OFFICIAL_NAMES = %w[Ethiopia Äthiopien Éthiopie Etiopía エチオピア Ethiopië].freeze
    end

    class GM
      ALPHA_2 = "GM"
      ALPHA_3 = "GMB"
      COUNTRY_CODE = "220"
      NAME = "Gambia"
      UN_OFFICIAL_NAMES = %w[Gambia ガンビア].freeze
    end

    class TZ
      ALPHA_2 = "TZ"
      ALPHA_3 = "TZA"
      COUNTRY_CODE = "255"
      NAME = "Tanzania, United Republic of"
      UN_OFFICIAL_NAMES = ["Tanzania", "Tansania", "Tanzanie", "タンザニア", "Tanzania United Republic"].freeze
    end

    class SD
      ALPHA_2 = "SD"
      ALPHA_3 = "SDN"
      COUNTRY_CODE = "249"
      NAME = "Sudan"
      UN_OFFICIAL_NAMES = %w[Sudan السودان Soudan Sudán スーダン Soedan].freeze
    end

    class MZ
      ALPHA_2 = "MZ"
      ALPHA_3 = "MOZ"
      COUNTRY_CODE = "258"
      NAME = "Mozambique"
      UN_OFFICIAL_NAMES = %w[Mozambique Mosambik モザンビーク].freeze
    end

    class NE
      ALPHA_2 = "NE"
      ALPHA_3 = "NER"
      COUNTRY_CODE = "227"
      NAME = "Niger"
      UN_OFFICIAL_NAMES = %w[Niger Níger ニジェール].freeze
    end

    class BF
      ALPHA_2 = "BF"
      ALPHA_3 = "BFA"
      COUNTRY_CODE = "226"
      NAME = "Burkina Faso"
      UN_OFFICIAL_NAMES = ["Burkina Faso", "ブルキナファソ"].freeze
    end

    class GA
      ALPHA_2 = "GA"
      ALPHA_3 = "GAB"
      COUNTRY_CODE = "241"
      NAME = "Gabon"
      UN_OFFICIAL_NAMES = %w[Gabon Gabun Gabón ガボン].freeze
    end

    class SH
      ALPHA_2 = "SH"
      ALPHA_3 = "SHN"
      COUNTRY_CODE = "290"
      NAME = "Saint Helena, Ascension and Tristan da Cunha"
      UN_OFFICIAL_NAMES = ["Saint Helena", "Sankt Helena", "Sainte Hélène",
                           "Santa Helena", "セントヘレナ・アセンションおよびトリスタンダクーニャ", "Sint-Helena",
                           "Saint Helena, Ascension and Tristan da Cunha"].freeze
    end

    class SC
      ALPHA_2 = "SC"
      ALPHA_3 = "SYC"
      COUNTRY_CODE = "248"
      NAME = "Seychelles"
      UN_OFFICIAL_NAMES = %w[Seychelles Seychellen セーシェル].freeze
    end

    class RE
      ALPHA_2 = "RE"
      ALPHA_3 = "REU"
      COUNTRY_CODE = "262"
      NAME = "Réunion"
      UN_OFFICIAL_NAMES = %w[Réunion Reunión Reunion レユニオン].freeze
    end

    class SO
      ALPHA_2 = "SO"
      ALPHA_3 = "SOM"
      COUNTRY_CODE = "252"
      NAME = "Somalia"
      UN_OFFICIAL_NAMES = %w[Somalia الصومال ソマリア Somalië].freeze
    end

    class CG
      ALPHA_2 = "CG"
      ALPHA_3 = "COG"
      COUNTRY_CODE = "242"
      NAME = "Congo"
      UN_OFFICIAL_NAMES = ["Congo", "Kongo", "コンゴ共和国", "Congo [Republiek]", "Congo, Republic of"].freeze
    end

    class YT
      ALPHA_2 = "YT"
      ALPHA_3 = "MYT"
      COUNTRY_CODE = "262"
      NAME = "Mayotte"
      UN_OFFICIAL_NAMES = %w[Mayotte マヨット].freeze
    end

    class KE
      ALPHA_2 = "KE"
      ALPHA_3 = "KEN"
      COUNTRY_CODE = "254"
      NAME = "Kenya"
      UN_OFFICIAL_NAMES = %w[Kenya Kenia ケニア].freeze
    end

    class SZ
      ALPHA_2 = "SZ"
      ALPHA_3 = "SWZ"
      COUNTRY_CODE = "268"
      NAME = "eSwatini"
      UN_OFFICIAL_NAMES = %w[Swaziland Swasiland Suazilandia スワジランド].freeze
    end

    class TD
      ALPHA_2 = "TD"
      ALPHA_3 = "TCD"
      COUNTRY_CODE = "235"
      NAME = "Chad"
      UN_OFFICIAL_NAMES = %w[Chad تشاد Tschad Tchad チャド Tsjaad].freeze
    end

    class CF
      ALPHA_2 = "CF"
      ALPHA_3 = "CAF"
      COUNTRY_CODE = "236"
      NAME = "Central African Republic"
      UN_OFFICIAL_NAMES = ["Central African Republic", "Zentralafrikanische Republik", "République Centrafricaine",
                           "República Centroafricana", "中央アフリカ共和国", "Centraal-Afrikaanse Republiek"].freeze
    end

    class SN
      ALPHA_2 = "SN"
      ALPHA_3 = "SEN"
      COUNTRY_CODE = "221"
      NAME = "Senegal"
      UN_OFFICIAL_NAMES = %w[Senegal Sénégal セネガル].freeze
    end

    class EG
      ALPHA_2 = "EG"
      ALPHA_3 = "EGY"
      COUNTRY_CODE = "20"
      NAME = "Egypt"
      UN_OFFICIAL_NAMES = %w[Egypt مصر Ägypten Égypte Egipto エジプト Egypte].freeze
    end

    class ER
      ALPHA_2 = "ER"
      ALPHA_3 = "ERI"
      COUNTRY_CODE = "291"
      NAME = "Eritrea"
      UN_OFFICIAL_NAMES = %w[Eritrea إريتريا Érythrée エリトリア].freeze
    end
  end
end
