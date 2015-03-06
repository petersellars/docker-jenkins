require 'docker'

describe "Jenkins image" do
  before(:all) {
    @image = Docker::Image.all().detect{|i| i.info['RepoTags'] == ["cato1971/docker-jenkins:latest"]}
  }

  it "should be available" do
    expect(@image).to_not be_nil
  end

  it "should expose the default tcp port" do
    expect(@image.json["Config"]["ExposedPorts"]).to include("8080/tcp")
  end

  it "should expose a Jenkins Home volume" do
    expect(@image.json["Config"]["Volumes"]).to include("/var/jenkins_home")
  end

end