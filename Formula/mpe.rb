class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.9"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9/mpe-1.0.9.tar.gz"
  sha256 "f5c691b54571bdb3238391ec4017f52027ed06afc8c9d4b1fa2edd374ec055aa"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "7cf9e32f4e5e94752c30eda943052678ceb98da58b3d712b1965d1133e4aa6f2"
    sha256 cellar: :any_skip_relocation, monterey: "57734e0cf558425be5227761d92e52fbb449d5d55a858ff81688b782ef71e787"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "97e6606401fcd533469d71615801a4402669660355f945753b1f93f728f12c39"
    sha256 cellar: :any_skip_relocation, arm64_linux: "8c9466d2d7b61a9ad3c67b086c498bea9aedda6a97bef57fc1736ff79b31b73d"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
