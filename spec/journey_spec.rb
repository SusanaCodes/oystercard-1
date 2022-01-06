require "journey"

describe Journey do
  it "knows if journey is completed" do
    expect(subject.completed?).to be true 
  end 
end 