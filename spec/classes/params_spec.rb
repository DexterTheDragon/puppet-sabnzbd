require 'spec_helper'

describe 'sabnzbd::params', :type => :class do
  context "On a Debian OS" do
    let :facts do
      {
        :osfamily => 'Debian',
        :operatingsystemrelease => '6',
      }
    end
    it { should contain_sabnzbd__params }

    # There are 4 resources in this class currently
    # there should not be any more resources because it is a params class
    # The resources are class[sabnzbd::params], class[main], class[settings], stage[main]
    it "Should not contain any resources" do
      subject.resources.size.should == 4
    end
  end
end
