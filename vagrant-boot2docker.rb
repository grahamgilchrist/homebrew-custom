require 'formula'

class VagrantBoot2docker < Formula
  homepage 'https://www.github.com/grahamgilchrist/vagrant-boot2docker'
  url 'https://github.com/grahamgilchrist/vagrant-boot2docker/archive/0.0.5.tar.gz'
  sha1 'ba2518074392cb3cdfc6fbb9db0faddaa452b403'

  ## The install method.
  def install
    # If your formula's build system is not thread safe:
    ENV.deparallelize

    # Warn that we need vagrant to work
    opoo 'You must have brew cask and vagrant installed for this package to work'
    opoo 'brew install caskroom/cask/brew-cask && brew cask install vagrant'

    libexec.install Dir['*']
    (libexec+'vagrant-boot2docker').chmod 0755
    bin.install_symlink libexec+'vagrant-boot2docker'

    # Todo:
    # uninstall screipt that runs vagrant destroy in libexec
    # Otherwise we can end up with the vagrant image still running 
    #  after we uninstall or upgrade and it can not be stopped

  end
end
