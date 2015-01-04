require 'cell'

class BoardCell; include Cell; end

describe Cell do

  let(:cell) {BoardCell.new}

  it 'should be water on initialization' do
    expect(cell.property).to eq(:water)
  end

  it 'should be able to be changed to ship' do
    allow(cell).to receive(:ship_property).and_return(:ship)
  end
end