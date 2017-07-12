require 'rails_helper'

RSpec.describe SearchPresenter do
  it "sorts by seniority" do
    search = SearchPresenter.new("CO")
    sorted = search.by_seniority
    most_senior = sorted.first
    least_senior = sorted.last
    
    expect(most_senior.seniority).to be >= least_senior.seniority
  end
end
