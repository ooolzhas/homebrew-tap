# The AnnotateKit CLI (https://annotatekit.com). Source: https://github.com/ooolzhas/annotatekit
# On each release, copy the url and sha256 from the Release workflow's job summary.
class Annotate < Formula
  desc "Deliver AnnotateKit iOS annotation sessions to coding agents (MCP server, watcher, runner)"
  homepage "https://annotatekit.com"
  url "https://github.com/ooolzhas/annotatekit/releases/download/v0.4.1/annotate-0.4.1-macos-universal.tar.gz"
  sha256 "065073f872ba2a79513ec26cb9a9e711a36eb16bd53abc4a5ac595833f8cae29"
  license "MIT"

  depends_on :macos

  def install
    bin.install "annotate"
  end

  test do
    assert_match "annotate", shell_output("#{bin}/annotate help")
  end
end
