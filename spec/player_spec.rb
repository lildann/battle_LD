require 'player'

describe Player do

let :player1 { Player.new("Pikachu") }

  it 'can return its name' do
    expect(subject.player1).to eq("Pikachu")
  end
end