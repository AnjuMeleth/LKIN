#
# Cookbook:: nginx
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'nginx::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end
  
    it 'install a package' do
      expect(chef_run).to install_package('nginx')
    end
    it 'start a service' do
      expect(chef_run).to start_service('nginx')
    end
    it 'enable a service at boot time' do
      expect(chef_run).to enable_service('nginx')
    end
  end

  context 'When all attributes are default, on CentOS 7.4.1708' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.4.1708')
      runner.converge(described_recipe)
    end

  it 'install a package' do
      expect(chef_run).to install_package('nginx')
    end 
    it 'start a service' do
      expect(chef_run).to start_service('nginx')
    end
    it 'enable a service at boot time' do
      expect(chef_run).to enable_service('nginx')
    end
  end
end
