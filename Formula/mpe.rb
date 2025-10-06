class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.4"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.4/mpe-1.0.4.tar.gz"
  sha256 "9dab8845d5abb3f8ee4333df69a6f03bbedabb8c8d3071db6fb41502f481b256"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.4"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "254386d3529fd063f8f6744ea782352c344f1d1a0b98fe70bdd3d737357a2ad1"
    sha256 cellar: :any_skip_relocation, monterey: "fb4d6fd5b004cfae6935a8ae315af34f4b0313cc001f77d23e083336dd05c721"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1ef4e1981fbc6b000c8be4dde9246ef0a31017de715f2357e9bf66144bdf4b1c"
    sha256 cellar: :any_skip_relocation, arm64_linux: "fe661c82ea9da40df9cb0097579315e548f1dee7e8f2b9b4b30fa1f7405676d9"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
