require 'spec_helper'

# write up RSpec integration tests here
#   see: http://serverspec.org/resource_types.html
describe file('/opt/maven/apache-maven-3.2.3') do
  it { should be_directory }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode 755 }
end

describe file('/usr/local/bin/mvn') do
  it { should be_linked_to '/opt/maven/apache-maven-3.2.3/bin/mvn' }
end
