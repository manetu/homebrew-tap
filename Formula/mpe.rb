# typed: false
# frozen_string_literal: true

# Homebrew formula for Manetu Policy Engine CLI
# This formula builds from source using Go
class Mpe < Formula
  desc "CLI for the Manetu Policy Engine - policy authoring, testing, and serving"
  homepage "https://github.com/manetu/policyengine"
  url "https://github.com/manetu/policyengine/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "b2f758790b27372cb51b3f36bd4040c12ed3ee45a88ce8b662a26955f46b75eb"
  license "Apache-2.0"
  head "https://github.com/manetu/policyengine.git", branch: "master"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/manetu/policyengine/cmd/mpe/version.Version=#{version}
    ]
    system "go", "build", *std_go_args(ldflags:), "./cmd/mpe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mpe version")
  end
end
