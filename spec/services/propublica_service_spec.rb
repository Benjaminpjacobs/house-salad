require 'rails_helper'

RSpec.describe PropublicaService do
  context ".search" do
    it "returns hash of data as expected" do
      search = PropublicaService.search('CO')
      representative = search[:results].first

      expect(search).to have_key(:status)
      expect(search[:status]).to eq("OK")
      expect(search).to have_key(:results)
      expect(search[:results]).to be_an Array
      expect(representative).to have_key(:role)
      expect(representative[:role]).to be_a String
      expect(representative).to have_key(:name)
      expect(representative[:name]).to be_a String
      expect(representative).to have_key(:party)
      expect(representative[:party]).to be_a String
      expect(representative).to have_key(:gender)
      expect(representative[:gender]).to be_a String
      expect(representative).to have_key(:seniority)
      expect(representative[:seniority]).to be_a String
      expect(representative).to have_key(:district)
      expect(representative[:district]).to be_a String
    end
  end

end

