class Mpe < Formula
  desc "Manetu Policy Engine CLI"
  homepage "https://github.com/manetu/homebrew-tap"
  version "1.0.10-2.40"
  license "Proprietary"

  # Main URL for the source/binary
  url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.10-2.40/mpe-1.0.10-2.40.tar.gz"
  sha256 "dc916870c2e5b59af10daa8d233f91d895c757ffbe1a5ce51e0f214e97a23e25"

  bottle do
    root_url "https://github.com/manetu/homebrew-tap/releases/download/v1.0.10-2.40"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "d0ea766b1920132beb77e014a918a7a4215ff41a91daec9ba78030719ce06da2"
    sha256 cellar: :any_skip_relocation, monterey: "9b6bff91902ac6f37ca77ec2a7cd1411608b7af10c6dce06f2180c0ecabf915b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "879757443ca835893ff21b083e34f5a325050e3d3f62027f8d2fa51d6964ee78"
    sha256 cellar: :any_skip_relocation, arm64_linux: "da6aa0d14ed98212a8343315f49fd908e47d572e6bb69f8242cb17e4fb04c120"
  end

  def install
    bin.install "bin/mpe"
  end

  test do
    system "#{bin}/mpe", "--help"
  end
end
