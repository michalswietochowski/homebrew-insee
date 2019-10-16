class SymfonyCli < Formula
  desc "Installs the Symfony CLI"
  homepage "https://symfony.com/"
  url "https://github.com/symfony/cli/releases/download/v4.7.2/symfony_darwin_amd64.gz"
  version "4.7.2"
  sha256 "f250c5c6497f5f56e2359c1311238a3020123d02ea4a0aa39bbb1dcf0c2fe4dc"

  depends_on "php"
  depends_on "composer"

  def install
    bin.install "symfony" => "symfony"
  end

  test do
    assert_match /2017-2019 Symfony SAS/, shell_output("symfony -v").strip
  end
end
