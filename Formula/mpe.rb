class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.2"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.2/mpe-1.0.2.tar.gz"
  sha256 "8ab5dcea64bf8aa6452f540a92ec9cffa343621a745ba14791d8afa8b038a980"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "543f5161a66069c1fba5bb30f1378491f4510ef56ce8a254a7fc8944c49d84d4"
    sha256 cellar: :any_skip_relocation, monterey: "50098e1e160a036d82466f56ec45d2151787b2203a2a3c88cf1ad74a5b690590"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fe719184a017f5977b7cce7f13e6a3e6c333aa6b5e62ce12861aaba9506f9c77"
    sha256 cellar: :any_skip_relocation, arm64_linux: "f56fd56920bed262d3c9aaa01a4c740f31c54dc898c7297d80f09c52f8be8502"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
