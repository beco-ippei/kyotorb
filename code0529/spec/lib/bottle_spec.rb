require 'spec_helper'

describe Bottle do
  describe '::exchange' do
    [
      [3, 4],
      [4, 5],
      [6, 8],
      [10, 14],
      [20, 29],
      [100, 149],
    ].each do |pair|
      it "#{pair[0]} bottles get #{pair[1]}" do
        expect(pair[0] + Bottle.bonus(pair[0])).to eq pair[1]
      end
    end
  end
end
