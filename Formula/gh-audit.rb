# typed: false
# frozen_string_literal: true

class GhAudit < Formula
  desc "GitHub audit, governance, and inventory for organizations"
  homepage "https://n8-group.com"
  version "0.1.3"
  license "BUSL-1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/n8group-oss/gh-audit/releases/download/v0.1.3/gh-audit-macos-arm64.zip"
    sha256 "c19ea23a0fac7ae53f99172725630bb6dcaf0835526926d0794aafd52fe81dad"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/n8group-oss/gh-audit/releases/download/v0.1.3/gh-audit-macos-amd64.zip"
    sha256 "734f945007da935e51cc719a03ccb8387a799d6c71369a7669ba7a996bbe8382"
  elsif OS.linux?
    url "https://github.com/n8group-oss/gh-audit/releases/download/v0.1.3/gh-audit-linux-amd64.zip"
    sha256 "966da18b7ce14b0a18e55280dd066b818e2942372ecd7eca29aae51915d052c3"
  end

  def install
    bin.install "gh-audit"
  end

  test do
    system "#{bin}/gh-audit", "--version"
  end
end
