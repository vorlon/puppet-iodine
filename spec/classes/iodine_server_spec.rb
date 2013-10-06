require 'spec_helper'

describe 'iodine::server', :type => :class do
  let(:hiera_data) {{ 'iodine::password' => 'example_test_password' }}

  ['Debian', 'RedHat'].each do |system|
    let(:facts) {{ :osfamily => system }}
    it { should contain_class 'iodine::server::install' }
  end
  
end
