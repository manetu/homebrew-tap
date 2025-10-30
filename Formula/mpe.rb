class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.9-5.34"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-5.34/mpe-1.0.9-5.34.tar.gz"
  sha256 "9ab328f56be0a669ea35be7f46bddc9e82d4d319d2b08d4c06881a84810e1c4f"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-5.34"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "b41cbd31b8d8b370e956fdbf2f73387b28691831a67fab396cc4e88ca286dbfe"
    sha256 cellar: :any_skip_relocation, monterey: "fbe8b28ddaa29e304186f96b9b324f7699bc5fd1ef8a6752c2fc8e2b164a91e7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "53702e51fd9e8e90361ddba0a309c148ab4df4efcecb62b7225e8e3883150c87"
    sha256 cellar: :any_skip_relocation, arm64_linux: "ffe935dd0aa11b3861a10095d503ccf3a6ce6ac05c6e72fac77241ea105331a2"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
