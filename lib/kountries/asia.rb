# frozen_string_literal: true

require "ostruct"

module Kountries
  # Asia
  module Asia
    def self.find_country_by_name(name)
      constants.each do |country|
        asian_country_class = Module.const_get "Kountries::Asia::#{country}"
        return as_struct(asian_country_class) if asian_country_class::NAME.upcase == name.upcase
        return as_struct(asian_country_class) if asian_country_class::UN_OFFICIAL_NAMES.include?(name.capitalize)
      end

      empty_struct
    end

    def self.find_country_by_code(code)
      return empty_struct unless Kountries::Asia.constants.include?(code.intern)

      asian_country_class = Module.const_get "Kountries::Asia::#{code}"
      return as_struct(asian_country_class) if asian_country_class::ALPHA_2 == code
    end

    def self.as_struct(asian_country_class)
      OpenStruct.new(
        alpha2: asian_country_class::ALPHA_2,
        alpha3: asian_country_class::ALPHA_3,
        country_code: asian_country_class::COUNTRY_CODE,
        name: asian_country_class::NAME,
        unofficial_names: asian_country_class::UN_OFFICIAL_NAMES
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

    class TJ
      ALPHA_2 = "TJ"
      ALPHA_3 = "TJK"
      COUNTRY_CODE = "992"
      NAME = "Tajikistan"
      UN_OFFICIAL_NAMES = %w[Tajikistan Tadschikistan Tayikistán タジキスタン Tadzjikistan Tajikstan].freeze
    end

    class AE
      ALPHA_2 = "AE"
      ALPHA_3 = "ARE"
      COUNTRY_CODE = "971"
      NAME = "United Arab Emirates"
      UN_OFFICIAL_NAMES = ["United Arab Emirates", "الإمارات العربية المتحدة", "Vereinigte Arabische Emirate",
                           "Émirats Arabes Unis", "Emiratos Árabes Unidos", "アラブ首長国連邦",
                           "Verenigde Arabische Emiraten"].freeze
    end

    class PK
      ALPHA_2 = "PK"
      ALPHA_3 = "PAK"
      COUNTRY_CODE = "92"
      NAME = "Pakistan"
      UN_OFFICIAL_NAMES = %w[Pakistan Paquistán パキスタン].freeze
    end

    class IR
      ALPHA_2 = "IR"
      ALPHA_3 = "IRN"
      COUNTRY_CODE = "98"
      NAME = "Iran (Islamic Republic of)"
      UN_OFFICIAL_NAMES = ["Iran", "Irán", "Iran (Islamic Republic Of)", "イラン・イスラム共和国",
                           "Islamic Republic of Iran"].freeze
    end

    class SA
      ALPHA_2 = "SA"
      ALPHA_3 = "SAU"
      COUNTRY_CODE = "966"
      NAME = "Saudi Arabia"
      UN_OFFICIAL_NAMES = ["Saudi Arabia", "Kingdom of Saudi Arabia", "السعودية", "Saudi-Arabien",
                           "Arabie Saoudite", "Arabia Saudí", "サウジアラビア", "Saoedi-Arabië"].freeze
    end

    class QA
      ALPHA_2 = "QA"
      ALPHA_3 = "QAT"
      COUNTRY_CODE = "974"
      NAME = "Qatar"
      UN_OFFICIAL_NAMES = %w[Qatar قطر Katar カタール].freeze
    end

    class KG
      ALPHA_2 = "KG"
      ALPHA_3 = "KGZ"
      COUNTRY_CODE = "996"
      NAME = "Kyrgyzstan"
      UN_OFFICIAL_NAMES = %w[Kyrgyzstan Kirgisistan Kirghizistan Kirguizistán キルギス Kirgizië Kyrgzstan].freeze
    end

    class KR
      ALPHA_2 = "KR"
      ALPHA_3 = "KOR"
      COUNTRY_CODE = "82"
      NAME = "Korea (Republic of)"
      UN_OFFICIAL_NAMES = ["South Korea", "Korea (South)", "Südkorea", "Corée du Sud",
                           "Corea del Sur", "大韓民国", "Zuid-Korea",
                           "Korea (Republic of)"].freeze
    end

    class TR
      ALPHA_2 = "TR"
      ALPHA_3 = "TUR"
      COUNTRY_CODE = "90"
      NAME = "Turkey"
      UN_OFFICIAL_NAMES = %w[Turkey Türkei Turquie Turquía トルコ Turkije].freeze
    end

    class GE
      ALPHA_2 = "GE"
      ALPHA_3 = "GEO"
      COUNTRY_CODE = "995"
      NAME = "Georgia"
      UN_OFFICIAL_NAMES = %w[Georgia Georgien Géorgie グルジア Georgië].freeze
    end

    class PS
      ALPHA_2 = "PS"
      ALPHA_3 = "PSE"
      COUNTRY_CODE = "970"
      NAME = "Palestine, State of"
      UN_OFFICIAL_NAMES = ["Palestine", "فلسطين", "Palästina", "Palestina",
                           "the Occupied Palestinian Territory", "パレスチナ",
                           "Palestijnse gebieden", "Palestinian Territory Occupied", "Palestinian Authority"].freeze
    end

    class SY
      ALPHA_2 = "SY"
      ALPHA_3 = "SYR"
      COUNTRY_CODE = "963"
      NAME = "Syrian Arab Republic"
      UN_OFFICIAL_NAMES = ["Syria", "سوريا", "سورية", "Syrien", "Syrie", "Siria", "シリア・アラブ共和国", "Syrië"].freeze
    end

    class BN
      ALPHA_2 = "BN"
      ALPHA_3 = "BRN"
      COUNTRY_CODE = "673"
      NAME = "Brunei Darussalam"
      UN_OFFICIAL_NAMES = ["Brunei", "ブルネイ・ダルサラーム"].freeze
    end

    class LA
      ALPHA_2 = "LA"
      ALPHA_3 = "LAO"
      COUNTRY_CODE = "856"
      NAME = "Lao People's Democratic Republic"
      UN_OFFICIAL_NAMES = ["Laos", "ラオス人民民主共和国", "Lao People s Democratic Republic"].freeze
    end

    class MY
      ALPHA_2 = "MY"
      ALPHA_3 = "MYS"
      COUNTRY_CODE = "60"
      NAME = "Malaysia"
      UN_OFFICIAL_NAMES = %w[Malaysia Malaisie Malasia マレーシア Maleisië].freeze
    end

    class YE
      ALPHA_2 = "YE"
      ALPHA_3 = "YEM"
      COUNTRY_CODE = "967"
      NAME = "Yemen"
      UN_OFFICIAL_NAMES = %w[Yemen اليمن Jemen Yémen イエメン].freeze
    end

    class HK
      ALPHA_2 = "HK"
      ALPHA_3 = "HKG"
      COUNTRY_CODE = "852"
      NAME = "Hong Kong"
      UN_OFFICIAL_NAMES = ["Hong Kong", "香港", "Hongkong"].freeze
    end

    class AZ
      ALPHA_2 = "AZ"
      ALPHA_3 = "AZE"
      COUNTRY_CODE = "994"
      NAME = "Azerbaijan"
      UN_OFFICIAL_NAMES = %w[Azerbaijan Aserbaidschan Azerbaïdjan Azerbaiyán アゼルバイジャン Azerbeidzjan].freeze
    end

    class TL
      ALPHA_2 = "TL"
      ALPHA_3 = "TLS"
      COUNTRY_CODE = "670"
      NAME = "Timor-Leste"
      UN_OFFICIAL_NAMES = ["East Timor", "Timor-Leste", "Timor oriental", "Timor Oriental", "東ティモール",
                           "Oost-Timor"].freeze
    end

    class SG
      ALPHA_2 = "SG"
      ALPHA_3 = "SGP"
      COUNTRY_CODE = "65"
      NAME = "Singapore"
      UN_OFFICIAL_NAMES = %w[Singapore Singapur Singapour シンガポール].freeze
    end

    class CN
      ALPHA_2 = "CN"
      ALPHA_3 = "CHN"
      COUNTRY_CODE = "86"
      NAME = "China"
      UN_OFFICIAL_NAMES = %w[China Chine 中国].freeze
    end

    class BH
      ALPHA_2 = "BH"
      ALPHA_3 = "BHR"
      COUNTRY_CODE = "973"
      NAME = "Bahrain"
      UN_OFFICIAL_NAMES = %w[Bahrain البحرين Bahreïn Bahrein バーレーン].freeze
    end

    class OM
      ALPHA_2 = "OM"
      ALPHA_3 = "OMN"
      COUNTRY_CODE = "968"
      NAME = "Oman"
      UN_OFFICIAL_NAMES = %w[Oman عمان Omán オマーン].freeze
    end

    class TM
      ALPHA_2 = "TM"
      ALPHA_3 = "TKM"
      COUNTRY_CODE = "993"
      NAME = "Turkmenistan"
      UN_OFFICIAL_NAMES = %w[Turkmenistan Turkménistan Turkmenistán トルクメニスタン].freeze
    end

    class MM
      ALPHA_2 = "MM"
      ALPHA_3 = "MMR"
      COUNTRY_CODE = "95"
      NAME = "Myanmar"
      UN_OFFICIAL_NAMES = %w[Myanmar ミャンマー].freeze
    end

    class IL
      ALPHA_2 = "IL"
      ALPHA_3 = "ISR"
      COUNTRY_CODE = "972"
      NAME = "Israel"
      UN_OFFICIAL_NAMES = %w[Israel Israël イスラエル].freeze
    end

    class BD
      ALPHA_2 = "BD"
      ALPHA_3 = "BGD"
      COUNTRY_CODE = "880"
      NAME = "Bangladesh"
      UN_OFFICIAL_NAMES = %w[Bangladesh Bangladesch バングラデシュ].freeze
    end

    class LK
      ALPHA_2 = "LK"
      ALPHA_3 = "LKA"
      COUNTRY_CODE = "94"
      NAME = "Sri Lanka"
      UN_OFFICIAL_NAMES = ["Sri Lanka", "スリランカ"].freeze
    end

    class MN
      ALPHA_2 = "MN"
      ALPHA_3 = "MNG"
      COUNTRY_CODE = "976"
      NAME = "Mongolia"
      UN_OFFICIAL_NAMES = %w[Mongolia Mongolei Mongolie モンゴル Mongolië].freeze
    end

    class VN
      ALPHA_2 = "VN"
      ALPHA_3 = "VNM"
      COUNTRY_CODE = "84"
      NAME = "Vietnam"
      UN_OFFICIAL_NAMES = ["Vietnam", "ベトナム", "Viet Nam"].freeze
    end

    class TW
      ALPHA_2 = "TW"
      ALPHA_3 = "TWN"
      COUNTRY_CODE = "886"
      NAME = "Taiwan, Province of China"
      UN_OFFICIAL_NAMES = %w[Taiwan Taiwán 台湾].freeze
    end

    class JP
      ALPHA_2 = "JP"
      ALPHA_3 = "JPN"
      COUNTRY_CODE = "81"
      NAME = "Japan"
      UN_OFFICIAL_NAMES = %w[Japan Japon Japón 日本].freeze
    end

    class AM
      ALPHA_2 = "AM"
      ALPHA_3 = "ARM"
      COUNTRY_CODE = "374"
      NAME = "Armenia"
      UN_OFFICIAL_NAMES = %w[Armenia Armenien Arménie アルメニア Armenië].freeze
    end

    class KZ
      ALPHA_2 = "KZ"
      ALPHA_3 = "KAZ"
      COUNTRY_CODE = "7"
      NAME = "Kazakhstan"
      UN_OFFICIAL_NAMES = %w[Kazakhstan Kasachstan Kazajistán カザフスタン Kazachstan].freeze
    end

    class CY
      ALPHA_2 = "CY"
      ALPHA_3 = "CYP"
      COUNTRY_CODE = "357"
      NAME = "Cyprus"
      UN_OFFICIAL_NAMES = %w[Cyprus Zypern Chypre Chipre キプロス].freeze
    end

    class MV
      ALPHA_2 = "MV"
      ALPHA_3 = "MDV"
      COUNTRY_CODE = "960"
      NAME = "Maldives"
      UN_OFFICIAL_NAMES = %w[Maldives Malediven Maldivas モルディブ Maldiven].freeze
    end

    class NP
      ALPHA_2 = "NP"
      ALPHA_3 = "NPL"
      COUNTRY_CODE = "977"
      NAME = "Nepal"
      UN_OFFICIAL_NAMES = ["Nepal", "Népal", "the Federal Democratic Republic of Nepal", "ネパール"].freeze
    end

    class KW
      ALPHA_2 = "KW"
      ALPHA_3 = "KWT"
      COUNTRY_CODE = "965"
      NAME = "Kuwait"
      UN_OFFICIAL_NAMES = %w[Kuwait الكويت Koweït クウェート Koeweit].freeze
    end

    class IN
      ALPHA_2 = "IN"
      ALPHA_3 = "IND"
      COUNTRY_CODE = "91"
      NAME = "India"
      UN_OFFICIAL_NAMES = %w[India Indien Inde インド].freeze
    end

    class MO
      ALPHA_2 = "MO"
      ALPHA_3 = "MAC"
      COUNTRY_CODE = "853"
      NAME = "Macao"
      UN_OFFICIAL_NAMES = %w[Macao Macau マカオ].freeze
    end

    class LB
      ALPHA_2 = "LB"
      ALPHA_3 = "LBN"
      COUNTRY_CODE = "961"
      NAME = "Lebanon"
      UN_OFFICIAL_NAMES = %w[Lebanon لبنان Libanon Liban Líbano レバノン].freeze
    end

    class JO
      ALPHA_2 = "JO"
      ALPHA_3 = "JOR"
      COUNTRY_CODE = "962"
      NAME = "Jordan"
      UN_OFFICIAL_NAMES = %w[Jordan الأردن Jordanien Jordanie Jordania ヨルダン Jordanië].freeze
    end

    class TH
      ALPHA_2 = "TH"
      ALPHA_3 = "THA"
      COUNTRY_CODE = "66"
      NAME = "Thailand"
      UN_OFFICIAL_NAMES = %w[Thailand Thaïlande Tailandia タイ].freeze
    end

    class KP
      ALPHA_2 = "KP"
      ALPHA_3 = "PRK"
      COUNTRY_CODE = "850"
      NAME = "Korea (Democratic People's Republic of)"
      UN_OFFICIAL_NAMES = ["Korea (North)", "North Korea", "Nordkorea", "Corée du Nord", "Corea del Norte",
                           "朝鮮民主主義人民共和国", "Noord-Korea", "Korea Democratic People's Republic",
                           "Korea (Democratic People s Republic of)"].freeze
    end

    class BT
      ALPHA_2 = "BT"
      ALPHA_3 = "BTN"
      COUNTRY_CODE = "975"
      NAME = "Bhutan"
      UN_OFFICIAL_NAMES = %w[Bhutan Bhoutan Bután ブータン].freeze
    end

    class AF
      ALPHA_2 = "AF"
      ALPHA_3 = "AFG"
      COUNTRY_CODE = "93"
      NAME = "Afghanistan"
      UN_OFFICIAL_NAMES = %w[Afghanistan Afganistán アフガニスタン].freeze
    end

    class PH
      ALPHA_2 = "PH"
      ALPHA_3 = "PHL"
      COUNTRY_CODE = "63"
      NAME = "Philippines"
      UN_OFFICIAL_NAMES = %w[Philippines Philippinen Filipinas フィリピン Filipijnen].freeze
    end

    class KH
      ALPHA_2 = "KH"
      ALPHA_3 = "KHM"
      COUNTRY_CODE = "855"
      NAME = "Cambodia"
      UN_OFFICIAL_NAMES = %w[Cambodia Kambodscha Cambodge Camboya カンボジア Cambodja].freeze
    end

    class IQ
      ALPHA_2 = "IQ"
      ALPHA_3 = "IRQ"
      COUNTRY_CODE = "964"
      NAME = "Iraq"
      UN_OFFICIAL_NAMES = %w[Iraq العراق Irak イラク].freeze
    end

    class UZ
      ALPHA_2 = "UZ"
      ALPHA_3 = "UZB"
      COUNTRY_CODE = "998"
      NAME = "Uzbekistan"
      UN_OFFICIAL_NAMES = %w[Uzbekistan Usbekistan Ouzbékistan Uzbekistán ウズベキスタン Oezbekistan].freeze
    end

    class ID
      ALPHA_2 = "ID"
      ALPHA_3 = "IDN"
      COUNTRY_CODE = "62"
      NAME = "Indonesia"
      UN_OFFICIAL_NAMES = %w[Indonesia Indonesien Indonésie インドネシア Indonesië].freeze
    end
  end
end
