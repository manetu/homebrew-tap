class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.3"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.3/mpe-1.0.3.tar.gz"
  sha256 "8444867356d594c25ae5fdb8a48e086a5d9b4e5c2068545fe958a04f965d5382"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.3"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "0a4ed390022e5e60dfe13ee1111f501dbc6d4e36afa005a85818a7b58d78f11b"
    sha256 cellar: :any_skip_relocation, monterey: "967a1e84aaadfc0df48a081bef2d75b14352992d9e05266136ec66cf8143ba8f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e9c18ce8be998426c6bb273869fa36c6e03102fd1ca9cf444a2e4efce2afc62d"
    sha256 cellar: :any_skip_relocation, arm64_linux: "427a79bd39f177ad554f66dcf4506e0b0ab80f54b74708de03680d45e167da74"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
