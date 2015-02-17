require 'formula'

class VagrantBoot2docker < Formula
  homepage 'https://www.github.com/grahamgilchrist/vagrant-boot2docker'
  url 'https://github.com/grahamgilchrist/vagrant-boot2docker/archive/0.0.1.zip'
  sha1: '6e26d1633ca54a41cdcf85ad81ee461b917fb91d'

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
