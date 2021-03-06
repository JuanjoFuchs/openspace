require 'spec_helper'

describe Session do
  subject { session }
  
  context "when has a valid status" do 
    let(:session) { Factory.build(:session, status: 'created') } 
    it { should have(0).error_on(:status) } 
  end
  
  context "when has an invalid status" do 
    let(:session) { Factory.build(:session, status: 'XXX') } 
    it { should have(1).error_on(:status) } 
  end
  
end