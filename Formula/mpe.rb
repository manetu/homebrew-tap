# typed: false
# frozen_string_literal: true

# Homebrew formula for Manetu Policy Engine CLI
# This formula builds from source using Go
class Mpe < Formula
  desc "CLI for the Manetu Policy Engine - policy authoring, testing, and serving"
  homepage "https://github.com/manetu/policyengine"
  url "https://github.com/manetu/policyengine/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "0cecb5233811f031f32bff5e236444a66ddffc5bd3f4d979bd4deb4cd28eaac4"
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
