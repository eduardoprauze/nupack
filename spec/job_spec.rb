require 'spec_helper'

describe Nupack::Job do

  describe "#validate!" do
    it 'should raise an error if base price is negative' do
      expect { Nupack::Job.new(-1000, 1, 'food') }.to raise_error(ArgumentError)
    end
    it 'should raise an error if required personnel is negative' do
      expect { Nupack::Job.new(1000, -1, 'food') }.to raise_error(ArgumentError)
    end
    it 'should raise an error if required personnel is not a whole number' do
      expect { Nupack::Job.new(1000, 1.5, 'food') }.to raise_error(ArgumentError)
    end
    it 'should not raise error if params are ok' do
      expect { Nupack::Job.new(1000, 1, 'food') }.not_to raise_error
    end
  end

end
