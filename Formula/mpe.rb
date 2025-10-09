class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.7"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.7/mpe-1.0.7.tar.gz"
  sha256 "3979bad9a4051ff5eabab0b55a6ba8698967bc6771fa15056cccb71ac385af11"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.7"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "d59f39efba00032aecd291f04140904bba737f2c00d949e80524c5c12c259478"
    sha256 cellar: :any_skip_relocation, monterey: "0e68bcd980e10d0edffcfd4b658ab21d57020eacf27f5b85cb9c283de828032c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "bbfae4bf515ab2df45a3076c2d3f5815304cf975a6b0cfbd11e1f4d29546fec9"
    sha256 cellar: :any_skip_relocation, arm64_linux: "3560269271172aaf99f56cee211de8a6e34ef594843c3d131257ffbfe7f1adb9"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
