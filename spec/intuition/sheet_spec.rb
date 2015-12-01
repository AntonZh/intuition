require 'intuition/sheet'

describe Intuition::Sheet do
  describe '.new' do
    let(:title) { FFaker::Lorem.phrase  }
    it 'takes sheet title' do
      expect(described_class.new(title).title).to eq(title)
    end
  end

  describe '#header' do
    subject { described_class.new(FFaker::Lorem.phrase) }
    let(:header) { FFaker::Lorem.phrase }

    context 'with parameter' do
      it 'sets header' do
        subject.header header
        expect(subject.instance_variable_get(:@header)).to eq([header])
      end
    end
    context 'without parameter' do
      it 'gets header' do
        subject.instance_variable_set(:@header, [header])
        expect(subject.header).to eq([header])
      end
    end
  end
end
