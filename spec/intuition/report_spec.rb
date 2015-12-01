require 'intuition/report'

describe Intuition::Report do
  describe '.new' do
    it 'creates new report object' do
      expect(described_class.new).to be_a_instance_of(described_class)
    end
  end
end
