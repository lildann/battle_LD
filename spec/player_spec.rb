require 'player'

describe Player do

  subject(:pikachu)  { Player.new("Pikachu") }
  subject(:jigglypuff) { Player.new("Jigglypuff") }

  context '#name' do
    it 'returns the name' do
      expect(pikachu.name).to eq("Pikachu")
    end
  end 

  context '#hit_points' do
    it 'returns hit points' do
      expect(pikachu.hit_points).to eq(described_class::DEFAULT_HP)
    end
  end

  context '#attack' do
    it 'attacks the player' do
      expect(jigglypuff).to receive(:receive_damage) 
      pikachu.attack(jigglypuff)
    end
  end

  context '#receive_damage' do
    it 'reduces player hit points' do
      expect { pikachu.receive_damage }.to change { pikachu.hit_points }.by(-10)
    end
  end
end
