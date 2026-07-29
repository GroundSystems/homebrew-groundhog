class Groundhog < Formula
  desc "Append-only event log with a DuckDB warehouse projection"
  homepage "https://groundhog.so"
  url "https://github.com/GroundSystems/groundhog/releases/download/v0.1.1/groundhog-0.1.1-aarch64-apple-darwin.tar.gz"
  version "0.1.1"
  sha256 "a63bd43bb72f0685351f76ed2b335a209933773296cf37f312da1a05d211057f"
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
