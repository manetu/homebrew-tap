class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.5"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.5/mpe-1.0.5.tar.gz"
  sha256 "fe1fcb6363e1cda0d41b46c7bb36fd4a883ae92f5a0afb274635d37585d86eda"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.5"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "3c8d735b4acb3b7ba32459c73ecdf90788e6aea98b2bedb8af83b76ac29d9ffb"
    sha256 cellar: :any_skip_relocation, monterey: "df771359b9f3121aed8a8521e60dc038f5bd5d03c657305d43bac0cbce1fe84c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "dd9c4ce560201beab9cbfed3c944a0670161b4e1f92cf729be4d576c4c14a01f"
    sha256 cellar: :any_skip_relocation, arm64_linux: "c084f5000b20cdcb128d8771a65f7c9505cd5e9c4fe8169c0ed4a0d47fabcd79"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
