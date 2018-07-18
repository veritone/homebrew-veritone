# Copyright Veritone Corporation 2018. All rights reserved.
# See LICENSE for more information.

require "FileUtils"

class Tagger < Formula
  homepage "https://github.com/veritone/tagger"

  v = "1.2.2"
  url "https://github.com/veritone/tagger/releases/download/#{v}/tagger-darwin-amd64"
  version v
  sha256 "0ddd90fcc149b5e8b3528ee2c606ef0294026683b267662a56234809faf99f34"

  def install
    FileUtils.mv("tagger-darwin-amd64", "tagger")
    bin.install "tagger"
  end

  test do
    system "#{bin}/tagger", "version"
  end
end