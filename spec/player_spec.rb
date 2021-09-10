require 'player'

describe Player do

let(:pikachu)  { Player.new("Pikachu") }

  it 'can return its name' do
    expect(pikachu.name).to eq("Pikachu")
  end
end