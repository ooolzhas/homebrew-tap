# The AnnotateKit CLI (https://annotatekit.com). Source: https://github.com/ooolzhas/annotatekit
# On each release, copy the url and sha256 from the Release workflow's job summary.
class Annotate < Formula
  desc "Deliver AnnotateKit iOS annotation sessions to coding agents (MCP server, watcher, runner)"
  homepage "https://annotatekit.com"
  url "https://github.com/ooolzhas/annotatekit/releases/download/v0.2.0/annotate-0.2.0-macos-universal.tar.gz"
  sha256 "2f2f8035159ed0f94c211b72fd9b02631845c99e808d40c937ef8b41e41d603f"
  license "MIT"

  depends_on :macos

  def install
    bin.install "annotate"
  end

  test do
    assert_match "annotate", shell_output("#{bin}/annotate help")
  end
end
