class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.10-1.38"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.10-1.38/mpe-1.0.10-1.38.tar.gz"
  sha256 "1e7fa3f8c9c535a8a12dede2d58d2a2c375dec4851b14aaaa89ba81175a9bb3a"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.10-1.38"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "7068c39d01dc5e0b9217540edb20f5cff144223e56dd7502b9d1a0ab76d597bd"
    sha256 cellar: :any_skip_relocation, monterey: "c4c0311b36f587156a63f4aea5091d537edc0a4d4bc162c35a6a2e58e53d2d4a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "936b514fc149d1d103d002264f8aa684eef8753b120553320d96cb494bf81a9a"
    sha256 cellar: :any_skip_relocation, arm64_linux: "d09a31de49b27e0953bc6c9900635e26addab1427418c2b1dfb38f7e1c7e3d26"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
