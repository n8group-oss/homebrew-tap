# typed: false
# frozen_string_literal: true

class GhScanner < Formula
  desc "GitHub organization discovery and inventory scanner"
  homepage "https://n8-group.com"
  version "0.1.0"
  license "BUSL-1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/n8group-oss/gh-scanner-core/releases/download/scanner-v0.1.0/gh-scanner-macos-arm64.zip"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/n8group-oss/gh-scanner-core/releases/download/scanner-v0.1.0/gh-scanner-macos-amd64.zip"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux?
    url "https://github.com/n8group-oss/gh-scanner-core/releases/download/scanner-v0.1.0/gh-scanner-linux-amd64.zip"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "gh-scanner"
  end

  test do
    system "#{bin}/gh-scanner", "--version"
  end
end
