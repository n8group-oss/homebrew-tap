# typed: false
# frozen_string_literal: true

class GhAudit < Formula
  desc "GitHub audit, governance, and inventory for organizations"
  homepage "https://n8-group.com"
  version "0.2.0"
  license "BUSL-1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/n8group-oss/gh-audit/releases/download/v0.2.0/gh-audit-macos-arm64.zip"
    sha256 "8f205ace1f9a34219c4fbcfb083720c0a564e8b525f7802196162f91e90a2e2f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/n8group-oss/gh-audit/releases/download/v0.2.0/gh-audit-macos-amd64.zip"
    sha256 "ae161b6adc1af9993dab3a801031b653fabf75af978c6d9bd0ec309d2d791e22"
  elsif OS.linux?
    url "https://github.com/n8group-oss/gh-audit/releases/download/v0.2.0/gh-audit-linux-amd64.zip"
    sha256 "834e8b9ec6c59a0592c99591d021f83f4e4e602e07d03b1e9e04df4de22c825b"
  end

  def install
    bin.install "gh-audit"
  end

  test do
    system "#{bin}/gh-audit", "--version"
  end
end
