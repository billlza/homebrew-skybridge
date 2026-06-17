class Skybridge < Formula
  desc "SkyBridge CLI headless operator surface"
  homepage "https://github.com/billlza/Skybridge-Compass"
  version "0.2.0"

  depends_on arch: :arm64

  on_arm do
    url "https://github.com/billlza/Skybridge-Compass/releases/download/skybridge-cli-v0.2.0/skybridge-aarch64-apple-darwin.tar.gz"
    sha256 "056f8eee326fc0b06eb7ea441a32ce861477a310bfcac38c778d914feb80c1e0"
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
