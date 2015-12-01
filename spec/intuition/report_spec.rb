require 'intuition/report'

class SampleReport < Intuition::Report
  def calculate
    sheet 'First' do
      header ['Name', 'Date', 'Count']

      table do
        row 'Jack', Time.new(2015, 10, 12), 5
        row 'James', Time.new(2014, 4, 21), 83
        row 'John', Time.new(2013, 2, 5), 161
      end
    end
  end
end

describe Intuition::Report do
  describe '.new' do
    it 'creates new report object' do
      expect(described_class.new).to be_a_instance_of(described_class)
    end
  end

  it 'simple report' do
    report = SampleReport.new
    result = report.result

    result.sheets.each do |sheet|
      p sheet
    end
  end
end
