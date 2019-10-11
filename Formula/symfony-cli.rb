class SymfonyCli < Formula
  desc "Installs the Symfony CLI"
  homepage "https://symfony.com/"
  url "https://github.com/symfony/cli/releases/download/v4.7.3/symfony_darwin_amd64.gz"
  version "4.7.3"
  sha256 "6ab4ee9620674dfa47fbd223137cd1ceff80f1ddfa0ff2db688ecec8c85db7df"

  depends_on "php"
  depends_on "composer"

  def install
    bin.install "symfony" => "symfony"
  end

  test do
    assert_match /2017-2019 Symfony SAS/, shell_output("symfony -v").strip
  end
end
