# typed: false
# frozen_string_literal: true

class GhAudit < Formula
  desc "GitHub audit, governance, and inventory for organizations"
  homepage "https://n8-group.com"
  version "0.2.1"
  license "BUSL-1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/n8group-oss/gh-audit/releases/download/v0.2.1/gh-audit-macos-arm64.zip"
    sha256 "16dafc6051dbc56e7cdba1490a83cffa424a72cade14cef34370ba7d45820ee1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/n8group-oss/gh-audit/releases/download/v0.2.1/gh-audit-macos-amd64.zip"
    sha256 "99c9d154349edbcad0fa4bd104576d8c1e11e19969f6ea640645adac6fc7bbe2"
  elsif OS.linux?
    url "https://github.com/n8group-oss/gh-audit/releases/download/v0.2.1/gh-audit-linux-amd64.zip"
    sha256 "6b844f6f038621a87897be665c48a4e21352bb848429020a1d24f39ae398961e"
  end

  def install
    bin.install "gh-audit"
  end

  test do
    system "#{bin}/gh-audit", "--version"
  end
end
