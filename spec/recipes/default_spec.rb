require 'spec_helper'

describe 'chefspec_example::default' do
  let(:chef_run) do
    ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04')
      .converge('chefspec_example::default')
    end

  it 'should create a chefspec_example resource' do
    expect(chef_run).to go_and_doit('widget1')
  end

  it 'should create the template' do
    expect(chef_run).to create_template('/etc/example.conf')
      .with(
        owner: 'example',
        group: 'example',
        mode: '0755'
      )
  end

  it 'should create the file' do
    expect(chef_run).to create_cookbook_file('/var/lib/example.dat')
      .with(
        owner: 'example',
        group: 'example',
        mode: '0755'
      )
  end

  it 'should install the package' do
    expect(chef_run).to install_package('example')
  end

  it 'should install the service' do
    expect(chef_run).to enable_service('example')
  end
end
