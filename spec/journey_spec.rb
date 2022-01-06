require 'journey'

describe Journey do 

  subject {described_class.new(entry_station: "kingscross", exit_station: "paddington")}


  it 'knows if a journey is completed' do 
    expect(subject.completed?).to be true
  end 

  it 'starts a journey' do 
  expect(subject.entry_station).to eq("kingscross")
  end 


it 'finishes a journey' do 
  expect(subject.exit_station).to eq("paddington")
end 
end 