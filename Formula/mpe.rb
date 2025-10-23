class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.9-3"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-3/mpe-1.0.9-3.tar.gz"
  sha256 "5eeef75afa699353b9715501427b02bcaf2376db0937cc9493904cdf378f83e1"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-3"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "00d74cd0db8f6986936c0155cce55f786ff5d799f1aeffdc11edd65b4151c4e9"
    sha256 cellar: :any_skip_relocation, monterey: "9d27c09d530bb92f4469105b3afffafca460660008ec5386cd483b9007354ec0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1e49f3241cdbab4f119b399566b26d5ca0bb7722bb191780cb9eda3c77e23a3d"
    sha256 cellar: :any_skip_relocation, arm64_linux: "8af6a658c9760b2013a8a88970c123d70227a0c3d56b2bcd59e2a2a1f99afdab"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
