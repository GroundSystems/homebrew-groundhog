class Groundhog < Formula
  desc "Durable append-only event log with replay, follow, and streams"
  homepage "https://groundhog.so"
  url "https://github.com/GroundSystems/groundhog/releases/download/v0.3.0/groundhog-0.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "bae99050774c19fbe91a7297e1acafba51f9389bb97c80bfdf58679dd8dec128"
  license "FSL-1.1-ALv2"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "groundhog"
    doc.install "LICENSE.md", "THIRD-PARTY-LICENSES.yml"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/groundhog --version")
  end
end
