class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.10-5.46"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.10-5.46/mpe-1.0.10-5.46.tar.gz"
  sha256 "03fa3f81c5d05fe6824354d2367ba8015cd748f05337f5f899303b06c03596fe"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.10-5.46"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "f28d83479135547f717211d02cdb57406563a656f221dfd6a0a520c874f8ba22"
    sha256 cellar: :any_skip_relocation, monterey: "e3ea291e9e3f5efdbef70b055eba00dbc58e1c82ac8b6c680064a2eb33b00bf7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0c87fbb5005042c33f68f14940a5dd3daedb3f6abf25bd08ece3eb48b4455165"
    sha256 cellar: :any_skip_relocation, arm64_linux: "0b4f46129cb09af27d5d764b7176b89f37bfc9c80fa5bb7926b642423dc9640d"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
