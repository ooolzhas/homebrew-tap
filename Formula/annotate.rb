# The AnnotateKit CLI (https://annotatekit.com). Source: https://github.com/ooolzhas/annotatekit
# On each release, copy the url and sha256 from the Release workflow's job summary.
class Annotate < Formula
  desc "Deliver AnnotateKit iOS annotation sessions to coding agents (MCP server, watcher, runner)"
  homepage "https://annotatekit.com"
  url "https://github.com/ooolzhas/annotatekit/releases/download/v0.2.1/annotate-0.2.1-macos-universal.tar.gz"
  sha256 "f2702fe3ea1247b80b4914ab6b3c20b26d3f17e1959f4e51f7776cc33e27213c"
  license "MIT"

  depends_on :macos

  def install
    bin.install "annotate"
  end

  test do
    assert_match "annotate", shell_output("#{bin}/annotate help")
  end
end
