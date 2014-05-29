require 'spec_helper'

describe NameIndex do
  describe '#keys' do
    let(:keys) do
      [
        'アィイゥウェエォオ',
        'カガキギクグケゲコゴ',
        'サザシジスズセゼソゾ',
        'タダチヂッツヅテデトド',
        'ナニヌネノ',
        'ハバパヒビピフブプヘベペホボポ',
        'マミムメモ',
        'ヤュユョヨ',
        'ラリルレロ',
        'ワヰヱヲン',
      ].map(&:chars)
    end

    it { expect(NameIndex.keys).to eq keys }
  end

  describe '#index' do
    subject { NameIndex.index name }

    it { expect(NameIndex.index 'カトウ').to eq 'カ' }
    it { expect(NameIndex.index 'イトウ').to eq 'ア' }
    it { expect(NameIndex.index 'スミ').to eq 'サ' }
    it { expect(NameIndex.index 'ナカニシ').to eq 'ナ' }
    it { expect(NameIndex.index 'ウエノ').to eq 'ア' }
    it { expect(NameIndex.index 'ゴンドウ').to eq 'カ' }
    it { expect(NameIndex.index 'ワタベ').to eq 'ワ' }
  end

  describe '#sort' do
    let(:names) do
      %w[カトウ イトウ スミ ナカニシ ウエノ]
    end
    subject { NameIndex.sort names }

    let(:sorted_names) do
      [
        ['ア', %w[イトウ ウエノ]],
        ['カ', %w[カトウ]],
        ['サ', %w[スミ]],
        ['ナ', %w[ナカニシ]],
      ]
    end

    it { expect(subject).to eq sorted_names }
  end
end

