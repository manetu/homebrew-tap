class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.6"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.6/mpe-1.0.6.tar.gz"
  sha256 "3f95530ee9412e71cc46d750f06353108fcdc3da65fa4a74d7813cff6e0f54d2"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.6"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "2c6c7c97fd2da7d8335bfd3b6d3fa2318d04fda269fb3c8c99673c1edda43d28"
    sha256 cellar: :any_skip_relocation, monterey: "e7d9838f4e23db9d910773864e216ac56aa206bc2855a3e40d8846a316a76ecc"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "361110132c6ce63956562a24d3f9ae79085f7d11fd6174a6e507170ffe476b11"
    sha256 cellar: :any_skip_relocation, arm64_linux: "537ed314e886c38cd88b9968ae9da509922e051cb2b91e03b26e33ca2aea1a29"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
