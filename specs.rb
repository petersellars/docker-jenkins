require 'docker'

describe "Jenkins image" do
  before(:all) {
    @image = Docker::Image.all().detect{|i| i.info['Repository'] == 'cato1971/docker-jenkins'}
  }

  it "should be availble" do
    expect(@image).to_not be_nil
  end
end