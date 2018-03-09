require "FileUtils"

class Tagger < Formula
  homepage "https://github.com/veritone/tagger"

  v = "1.2.0"
  url "https://github.com/veritone/tagger/releases/download/#{v}/tagger-darwin-amd64"
  version v
  sha256 "b74bcceadb9ad22bb67dead0a0ffafd95a553fc9796c3099079c01d29b740a5c"

  def install
    FileUtils.mv("tagger-darwin-amd64", "tagger")
    bin.install "tagger"
  end

  test do
    system "#{bin}/tagger", "version"
  end
end