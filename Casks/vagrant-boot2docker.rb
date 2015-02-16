cask :v1 => 'vagrant-boot2docker' do
  version :latest
  sha256 :no_check

  url 'https://github.com/grahamgilchrist/vagrant-boot2docker/archive/0.0.1.zip'
  homepage 'https://github.com/grahamgilchrist/vagrant-boot2docker'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  ## Dependencies
  depends_on :cask => 'vagrant'

  binary 'vagrant-boot2docker'
end§
