require 'spec_helper'

describe Nupack::Job do
  
    let(:job) { Nupack::Job }

    it 'can be created with attributes' do
      new_job = job.new(1000, 1, 'food')
      expect(new_job.nil?).to be(false)
    end
end
