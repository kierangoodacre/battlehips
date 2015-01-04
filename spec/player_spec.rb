require 'player'
require 'board'
require 'colorize'

describe Player do

	let(:player)  {Player.new}
	let(:board) {Board.new}
  let(:ship) {double :ship}

	it 'should be able to place a ship' do
	 player.place(ship, 'vertical', 'a1')
   expect(player.place(ship, 'vertical', 'a1')).to eq(:success)
	end

end