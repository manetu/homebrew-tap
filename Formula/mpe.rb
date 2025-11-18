class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.10-3.42"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.10-3.42/mpe-1.0.10-3.42.tar.gz"
  sha256 "39a7fffdfac1363a9b527b023178ade553f23622423771cb13e34775c65df8b3"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.10-3.42"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "e33d8eec2c4a3854609a3e2d509c4bb345ff33222e5c07d5e2086a82052c3e18"
    sha256 cellar: :any_skip_relocation, monterey: "a5b605da2906ba53caef00c7f9f1578d4fc2ca30d437b8ab5de0228d9a7bd388"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8a6faf5818fd05573c3dfdb0fe86e28f3b70f8bd4484d8630bc05f5710e20560"
    sha256 cellar: :any_skip_relocation, arm64_linux: "453753b3702609476d0ff18f8753aa9d51f7c5b6119f220087b35c19ab07daa7"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
