# frozen_string_literal: true

RSpec.describe Kountries do
  context "when querying Africa" do
    let(:country) { Kountries::Africa::KE }

    it { expect(Kountries::Africa.find_country_by_code(country::ALPHA_2)).to eq(Kountries.as_struct(country)) }
    it { expect(Kountries::Africa.find_country_by_name("Kenya")).to eq(Kountries.as_struct(country)) }
  end

  context "when querying America" do
    let(:country) { Kountries::America::MX }

    it { expect(Kountries::America.find_country_by_code(country::ALPHA_2)).to eq(Kountries.as_struct(country)) }
    it { expect(Kountries::America.find_country_by_name("Mexico")).to eq(Kountries.as_struct(country)) }
  end

  context "when querying Asia" do
    let(:country) { Kountries::Asia::PK }

    it { expect(Kountries::Asia.find_country_by_code(country::ALPHA_2)).to eq(Kountries.as_struct(country)) }
    it { expect(Kountries::Asia.find_country_by_name("Pakistan")).to eq(Kountries.as_struct(country)) }
  end

  context "when querying Europe" do
    let(:country) { Kountries::Europe::IS }

    it { expect(Kountries::Europe.find_country_by_code(country::ALPHA_2)).to eq(Kountries.as_struct(country)) }
    it { expect(Kountries::Europe.find_country_by_name("Iceland")).to eq(Kountries.as_struct(country)) }
  end

  context "when querying for Oceania" do
    let(:country) { Kountries::Oceania::VU }

    it { expect(Kountries::Oceania.find_country_by_code(country::ALPHA_2)).to eq(Kountries.as_struct(country)) }
    it { expect(Kountries::Oceania.find_country_by_name("Vanuatu")).to eq(Kountries.as_struct(country)) }
  end
end
