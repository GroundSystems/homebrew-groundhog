class Groundhog < Formula
  desc "Durable append-only event log with replay, follow, and streams"
  homepage "https://groundhog.so"
  url "https://github.com/GroundSystems/groundhog/releases/download/v0.2.0/groundhog-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "ac4799066e76a0f21496182660a8fc74c2ab3c45d68e5cceb7be10c07866cab5"
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
