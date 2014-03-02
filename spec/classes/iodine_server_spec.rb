require 'spec_helper'

describe 'iodine::server', :type => :class do

  ['Debian', 'RedHat'].each do |system|
    let(:facts) {{ :osfamily => system }}
    let(:params) {{ 'password' => 'example_test_password' }}
    
    it { should contain_class 'iodine::server::install' }
  end
  
end
