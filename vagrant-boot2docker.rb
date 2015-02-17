require "formula"

class VagrantBoot2Docker < Formula
  homepage "https://www.github.com/grahamgilchrist/vagrant-boot2docker"
  url "https://github.com/grahamgilchrist/vagrant-boot2docker", :using => :git, :tag => "0.0.1"

  ## Dependencies
  #depends_on :cask => 'vagrant'

  ## The install method.

  def install
    # If your formula's build system is not thread safe:
    ENV.deparallelize

    # No "make", "install" available?
    bin.install "vagrant-boot2docker"

  end
end
