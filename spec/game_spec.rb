require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1)  { double :player }
  let(:player_2) { double :player }

  context '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  context '#player_2' do
    it 'retrieves the first player' do
      expect(game.player_2).to eq player_2
    end
  end

  context '#attack' do
    it 'attacks the player' do
      expect(player_2).to receive(:receive_damage) 
      game.attack(player_2) #the game object now attacks player_2
    end
  end
end