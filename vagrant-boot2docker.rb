require 'formula'

class VagrantBoot2docker < Formula
  homepage 'https://www.github.com/grahamgilchrist/vagrant-boot2docker'
  url 'https://github.com/grahamgilchrist/vagrant-boot2docker/archive/0.0.3.zip'
  sha1 'c17357f5ecfb7e5a06aa1ed7d79c06118eb6e245'

  ## Dependencies
  #depends_on :cask => 'vagrant'

  ## The install method.
  def install
    # If your formula's build system is not thread safe:
    ENV.deparallelize

    #bin.install "vagrant-boot2docker"
    #libexec.install "Vagrantfile"

    libexec.install Dir['*']
    (libexec+'vagrant-boot2docker').chmod 0755
    bin.install_symlink libexec+'vagrant-boot2docker'

  end
end
