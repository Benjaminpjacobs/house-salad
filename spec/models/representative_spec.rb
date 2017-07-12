require 'rails_helper'

RSpec.describe Representative do
  it "wraps representative data in objects" do
    rep = Representative.new(representative_stub)

    expect(rep.name).to eq("Diana DeGette")
    expect(rep.role).to eq("Representative")
    expect(rep.party).to eq("D")
    expect(rep.seniority).to eq(22)
    expect(rep.district).to eq("1")
  end
end

def representative_stub
  {:id=>"D000197",
  :name=>"Diana DeGette",
  :role=>"Representative",
  :gender=>"F",
  :party=>"D",
  :times_topics_url=>"",
  :twitter_id=>"RepDianaDeGette",
  :youtube_id=>"RepDianaDeGette",
  :seniority=>"22",
  :next_election=>"2018",
  :api_uri=>"https://api.propublica.org/congress/v1/members/D000197.json",
  :district=>"1"}
end