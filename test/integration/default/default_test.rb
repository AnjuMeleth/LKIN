# # encoding: utf-8

# Inspec test for recipe nginx::default


# The Inspec reference, with examples and extensive documentation, can be
describe service 'nginx' do
  it { should be_running}
end
