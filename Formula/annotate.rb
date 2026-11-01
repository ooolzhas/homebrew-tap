# The AnnotateKit CLI (https://annotatekit.com). Source: https://github.com/ooolzhas/annotatekit
# On each release, copy the url and sha256 from the Release workflow's job summary.
class Annotate < Formula
  desc "Deliver AnnotateKit iOS annotation sessions to coding agents (MCP server, watcher, runner)"
  homepage "https://annotatekit.com"
  url "https://github.com/ooolzhas/annotatekit/releases/download/v0.4.0/annotate-0.4.0-macos-universal.tar.gz"
  sha256 "4abfc8914bbf90eb50504265dac268936a7d7c3ec2565b014efc220e54e180a5"
  license "MIT"

  depends_on :macos

  def install
    bin.install "annotate"
  end

  test do
    assert_match "annotate", shell_output("#{bin}/annotate help")
  end
end
