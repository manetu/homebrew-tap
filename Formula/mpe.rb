class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.1"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.1/mpe-1.0.1.tar.gz"
  sha256 "ffc4008c8df01038087033b39131189444f06611ead0223ac1e408d0ecf058b5"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.1"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "a0e5459452359150699c3793a3d286c28f38cd0b906206deebb4f3b9731dc8c5"
    sha256 cellar: :any_skip_relocation, monterey: "cd6f8c46d4c779569292b0c7671489dcae2a4abf24071c45d3604f23ba561592"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0199f89dac96c197bbbe16a7bf9aab64ac8066b9d9690351b6cbf2b09f117891"
    sha256 cellar: :any_skip_relocation, arm64_linux: "9859047fa817f5ff4d0f76c0a101e09cd40a0224f725fc51ece5167fb846432d"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
