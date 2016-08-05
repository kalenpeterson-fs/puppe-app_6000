require 'spec_helper'
describe 'app_6000' do

  context 'with default values for all parameters' do
    it { should contain_class('app_6000') }
  end
end
