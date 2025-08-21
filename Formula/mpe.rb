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
    sha256 cellar: :any_skip_relocation, arm64_ventura: "48078732e72825749a2a89e68e6a86a712c4b3879e89ec3fe54116621ba07c4a"
    sha256 cellar: :any_skip_relocation, monterey: "9ac3b24454f57cdfabba2550df68827e98cc94f1340a3b9b4bb1231e85842ded"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a951aca47e21df6b58bf422be7887b83d69fc6abdd2c6783a13280eebb4e6c06"
    sha256 cellar: :any_skip_relocation, arm64_linux: "4c268d94820416c9a7cb6b610d9d04dc7c8f29bd5859809a959bd5dc731eaf57"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
