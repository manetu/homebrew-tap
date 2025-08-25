class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.1"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.1/mpe-1.0.1.tar.gz"
  sha256 "4985b616ec3324abfed6f2b9388d95ebc740f44ee8f35495fe3e02530bed0b11"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "b7765c8b19e45bc6ed34a2292ab839acafe35c194f669a7f7ca9666322e45847"
    sha256 cellar: :any_skip_relocation, monterey: "64a0e392959c2b509ba772254a0a593d825912af1c3f6cf47692197685d81d0f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3deed3967fe903fede3ed52447dfeade3de46fa5db9ef9c32ef85625d48b36ed"
    sha256 cellar: :any_skip_relocation, arm64_linux: "e36a9d95564b35bf76f8ba46da4cbc152ef215e2656005ae82af1ceebc5150b4"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
