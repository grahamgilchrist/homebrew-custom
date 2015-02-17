require 'formula'

class VagrantBoot2docker < Formula
  homepage 'https://www.github.com/grahamgilchrist/vagrant-boot2docker'
  url 'https://github.com/grahamgilchrist/vagrant-boot2docker/archive/0.0.1.zip'

  ## Dependencies
  #depends_on :cask => 'vagrant'

  ## The install method.

  def install
    # If your formula's build system is not thread safe:
    #ENV.deparallelize

    # No "make", "install" available?
    #bin.install "vagrant-boot2docker"

  end
end
