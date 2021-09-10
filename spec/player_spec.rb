require 'player'

describe Player do

let(:pikachu)  { Player.new("Pikachu") }
let(:jigglypuff) { Player.new("Jigglypuff") }

  it 'can return its name' do
    expect(pikachu.name).to eq("Pikachu")
  end

  context 'Player 2 attacked' do
    it '#reduce_hit_points by 10' do
      jigglypuff.reduce_hit_points
      expect(jigglypuff.points).to eq(described_class::DEFAULT_HP - 10)
    end
  end

end
