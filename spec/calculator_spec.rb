require 'spec_helper'

describe Nupack::Calculator do

  before do
    @calculator = Nupack::Calculator.new
    @job = Nupack::Job.new(1000, 1, 'food')
  end

  describe "#flat_markup" do
    it 'calculates flat markup' do
      result = @calculator.flat_markup(@job)
      expect(result).to eq(1050)
    end
  end

  describe "#personnel_markup" do
    it 'calculates personnel markup ' do
      result = @calculator.personnel_markup(@job.required_personnel, 1000)
      expect(result).to eq(12)
    end
    it 'calculates personnel markup times personnel number ' do
      @job.required_personnel = 2
      result = @calculator.personnel_markup(@job.required_personnel, 1000)
      expect(result).to eq(24)
    end
  end

  describe "#material_markup" do
    it 'calculates material markup' do
      result = @calculator.material_markup(@job.material_type, 1000)
      expect(result).to eq(130)
    end
    it 'calculates zero markup if material is not listed' do
      @job.material_type = 'books'
      result = @calculator.material_markup(@job.material_type, 1000)
      expect(result).to eq(0)
    end
  end

  describe "#calculate" do
    it 'calculates total cost of job' do
      result = @calculator.calculate(@job)
      expect(result).to eq(1199.1)
    end
  end

end
