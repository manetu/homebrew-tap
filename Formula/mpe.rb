class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.9-4"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-4/mpe-1.0.9-4.tar.gz"
  sha256 "7d27ea52f032398e556020f884eac7de849bb12ca2c5d0c964904849e2568a76"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.9-4"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "8a48aee0b7a2cf08e8396ef048cfb1b3a2c676ab0a865e7a709dac6c9ac29b23"
    sha256 cellar: :any_skip_relocation, monterey: "b6e3473599ee793c2c6161c19d3b5ef4d4f6e2b36d499d319bd36764072d2f47"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fe251b12fdceaf9734818b4eb68d5207f55dedd60e90a7bf3671bd3f3c9b40a1"
    sha256 cellar: :any_skip_relocation, arm64_linux: "1dfbb1f4be6771df09cfc23c5905e93b02452e215a20b181d3fbaebc60e9b67b"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
