class Skybridge < Formula
  desc "SkyBridge CLI headless operator surface"
  homepage "https://github.com/billlza/Skybridge-Compass"
  version "1.0.0"

  depends_on arch: :arm64

  on_arm do
    url "https://github.com/billlza/Skybridge-Compass/releases/download/skybridge-cli-v1.0.0/skybridge-aarch64-apple-darwin.tar.gz"
    sha256 "69ca51b8c302a48612d890d0586e3605f1d3aadc60a6a5611d197f877395d39b"
  end

  def install
    bin.install "skybridge"
  end

  test do
    output = shell_output("#{bin}/skybridge version")
    assert_match version.to_s, output
    assert_match "phase_5_signaling_plane", output
  end
end
