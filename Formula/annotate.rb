# The AnnotateKit CLI (https://annotatekit.com). Source: https://github.com/ooolzhas/annotatekit
# On each release, copy the url and sha256 from the Release workflow's job summary.
class Annotate < Formula
  desc "Deliver AnnotateKit iOS annotation sessions to coding agents (MCP server, watcher, runner)"
  homepage "https://annotatekit.com"
  url "https://github.com/ooolzhas/annotatekit/releases/download/v0.4.2/annotate-0.4.2-macos-universal.tar.gz"
  sha256 "dc78802fdbf4db7026c559c1dbfeb9807a7c506385678ff349e52a6512276d6b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "annotate"
  end

  test do
    assert_match "annotate", shell_output("#{bin}/annotate help")
  end
end
