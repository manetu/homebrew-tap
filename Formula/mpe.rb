class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.9-4"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-4/mpe-1.0.9-4.tar.gz"
  sha256 "3c897d38c2daad86ab737b9156b270e5880c33c3edb93728cc69084245b71682"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-4"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "190b56acb28ecb72c019c8e32bd0a8fe29b1debb4cc2fd005ef9c791841fd390"
    sha256 cellar: :any_skip_relocation, monterey: "68c0f6a7337dab86cb47b75dccbc55784be37f620ba16b828d7ede8312094321"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8b49350c17093250aaaa6d32983f887f17c7bc5cd882985582dc09d431e94ad7"
    sha256 cellar: :any_skip_relocation, arm64_linux: "274c77a94f030c09bec1adaa14b889548bf7c76c91a6155984954bc26498fbde"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
