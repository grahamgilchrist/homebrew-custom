require 'formula'

class VagrantBoot2docker < Formula
  homepage 'https://www.github.com/grahamgilchrist/vagrant-boot2docker'
  url 'https://github.com/grahamgilchrist/vagrant-boot2docker/archive/0.0.3.zip'
  sha1 'c17357f5ecfb7e5a06aa1ed7d79c06118eb6e245'

  ## The install method.
  def install
    # If your formula's build system is not thread safe:
    ENV.deparallelize

    # Warnt hat we need vagrant to work
    opoo 'You must have brew cask and vagrant installed for this package to work'
    opoo 'brew install cask && brew cask install vagrant'

    libexec.install Dir['*']
    (libexec+'vagrant-boot2docker').chmod 0755
    bin.install_symlink libexec+'vagrant-boot2docker'

  end
end
