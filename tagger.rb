require "FileUtils"

class Tagger < Formula
  homepage "https://github.com/veritone/tagger"

  v = "1.1.1"
  url "https://github.com/veritone/tagger/releases/download/#{v}/tagger-darwin-amd64"
  version v
  sha256 "2f96ac7f9361f7a88f585926d71fa2760f99a73cae6c41af604c0714e61be8ee"

  def install
    FileUtils.mv("tagger-darwin-amd64", "tagger")
    bin.install "tagger"
  end

  test do
    system "#{bin}/tagger", "version"
  end
end