# typed: false
# frozen_string_literal: true

class GhAudit < Formula
  desc "GitHub audit, governance, and inventory for organizations"
  homepage "https://n8-group.com"
  version "0.1.2"
  license "BUSL-1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/n8group-oss/gh-audit/releases/download/v0.1.2/gh-audit-macos-arm64.zip"
    sha256 "4d57c355023a3f368e1ebc18d38782469a3288f15e4181a7f118186e69b44ffb"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/n8group-oss/gh-audit/releases/download/v0.1.2/gh-audit-macos-amd64.zip"
    sha256 "3a82648f753e70d6bd4e646ec64bd59dc2a8667fef28d73f7b51b68f6090db78"
  elsif OS.linux?
    url "https://github.com/n8group-oss/gh-audit/releases/download/v0.1.2/gh-audit-linux-amd64.zip"
    sha256 "61719639cddf428a92c33839ee87551dcd7ef158b6574b6529adbb175cbc0bc8"
  end

  def install
    bin.install "gh-audit"
  end

  test do
    system "#{bin}/gh-audit", "--version"
  end
end
