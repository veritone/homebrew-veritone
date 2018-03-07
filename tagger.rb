require "FileUtils"

class Tagger < Formula
  homepage "https://github.com/veritone/tagger"

  v = "1.0.0"
  url "https://github.com/veritone/tagger/releases/download/#{v}/tagger-darwin-amd64"
  version v
  sha256 "4af09eTODO:CHANGE_ME0b354a96b8"

  def install
    FileUtils.mv("tagger-darwin-amd64", "tagger")
    bin.install "tagger"
  end

  test do
    system "#{bin}/tagger", "version"
  end
end