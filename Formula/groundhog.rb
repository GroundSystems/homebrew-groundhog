class Groundhog < Formula
  desc "Append-only event log with a DuckDB warehouse projection"
  homepage "https://groundhog.so"
  url "https://github.com/GroundSystems/groundhog-releases/releases/download/v0.1.0/groundhog-0.1.0-aarch64-apple-darwin.tar.gz"
  version "0.1.0"
  sha256 "6a33c2db8127650086c013291373eda3dee0fea6f3edf04ed3310f97ad259e53"
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
