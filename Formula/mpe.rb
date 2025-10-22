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
    sha256 cellar: :any_skip_relocation, arm64_ventura: "d63ab4af10ba97d69fee426bd7509cb359729c81b54d40cd9c7cdb1db77e6f3b"
    sha256 cellar: :any_skip_relocation, monterey: "5d7edcaa94277d67305a56e6e2186ff3b61937791b83ffb27f3bb99aa7a2eb73"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "93f29886cda855396431d47b6899fa3b9f73cec0c53a7e949da41f1e30ee00f3"
    sha256 cellar: :any_skip_relocation, arm64_linux: "c5f1ddf97c412ebb4b4ee1459518b647ad9577795ceb32e61ff26e860ffe926f"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
