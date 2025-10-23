class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.9-2"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-2/mpe-1.0.9-2.tar.gz"
  sha256 "b8efbe7034d7b5d9e54dc7f21dcbbb306429c529f2f376ec9175d110aab91219"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "65b405c12b33770d79902d088bec4b374ddac509c035f8415df1a276fbe5621b"
    sha256 cellar: :any_skip_relocation, monterey: "022be57a3e14994f07f3d7561bb603fc10ccc8a9113eea0eacbbbe6e70314d40"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0988ef52ac05f8deba568bca581523b0b48f31f8f7a146a632b51201342ef589"
    sha256 cellar: :any_skip_relocation, arm64_linux: "8e09dc50910bdfe574d2f30edce676440d901c531e513c2981fcc32154e5635f"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
