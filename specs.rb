require 'docker'

describe "Jenkins image" do
  before(:all) {
    @image = Docker::Image.all().detect{|i| i.info['RepoTags'] == ["cato1971/docker-jenkins:latest"]}
  }

  it "should be available" do
    expect(@image).to_not be_nil
  end
end