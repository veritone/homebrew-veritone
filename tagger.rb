require "FileUtils"

class Tagger < Formula
  homepage "https://github.com/veritone/tagger"

  v = "1.2.1"
  url "https://github.com/veritone/tagger/releases/download/#{v}/tagger-darwin-amd64"
  version v
  sha256 "a67a2699d23b2a93dc9af4e930a9ee9912d4d7d3566ba16a17dd511594d05a15"

  def install
    FileUtils.mv("tagger-darwin-amd64", "tagger")
    bin.install "tagger"
  end

  test do
    system "#{bin}/tagger", "version"
  end
end